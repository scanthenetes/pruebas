<#
.SYNOPSIS
    Crea un certificado de firma de código, lo exporta (.cer y .pfx),
    lo instala en el almacén de confianza (Root),
    y firma un script PowerShell automáticamente.
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$RutaScript,  # Ruta del script .ps1 a firmar

    [string]$NombreCertificado = "CertificadoFirmaScripts",
    [string]$RutaExportacion = "C:\Certificados",
    [string]$PasswordPFX = "ContraseñaSegura123"
)

# Crear carpeta de exportación
if (!(Test-Path $RutaExportacion)) {
    New-Item -ItemType Directory -Path $RutaExportacion | Out-Null
}

Write-Host "`n=== Creando certificado de firma de código ===" -ForegroundColor Cyan

# Crear certificado en el almacén Personal (My)
$cert = New-SelfSignedCertificate `
    -Type CodeSigningCert `
    -Subject "CN=$NombreCertificado" `
    -CertStoreLocation "Cert:\CurrentUser\My"

if (-not $cert) {
    Write-Host "❌ Error: no se pudo crear el certificado." -ForegroundColor Red
    exit
}

Write-Host "✅ Certificado creado: $($cert.Subject)" -ForegroundColor Green

# Exportar certificado público (.cer)
$RutaCER = Join-Path $RutaExportacion "$NombreCertificado.cer"
Export-Certificate -Cert $cert -FilePath $RutaCER | Out-Null
Write-Host "📄 Certificado público exportado a: $RutaCER" -ForegroundColor Yellow

# Exportar certificado con clave privada (.pfx)
$RutaPFX = Join-Path $RutaExportacion "$NombreCertificado.pfx"
$SecurePass = ConvertTo-SecureString -String $PasswordPFX -Force -AsPlainText
Export-PfxCertificate -Cert $cert -FilePath $RutaPFX -Password $SecurePass | Out-Null
Write-Host "🔒 Certificado con clave privada exportado a: $RutaPFX" -ForegroundColor Yellow

# Instalar certificado en el almacén de confianza (Root)
Write-Host "`n=== Instalando certificado en 'Trusted Root Certification Authorities' ===" -ForegroundColor Cyan
$storeRoot = New-Object System.Security.Cryptography.X509Certificates.X509Store("Root","CurrentUser")
$storeRoot.Open("ReadWrite")
$storeRoot.Add($cert)
$storeRoot.Close()
Write-Host "✅ Certificado añadido a 'Root' correctamente." -ForegroundColor Green

# Firmar el script indicado
Write-Host "`n=== Firmando script ===" -ForegroundColor Cyan
if (!(Test-Path $RutaScript)) {
    Write-Host "❌ Error: el archivo '$RutaScript' no existe." -ForegroundColor Red
    exit
}

Set-AuthenticodeSignature -FilePath $RutaScript -Certificate $cert | Out-Null
Write-Host "🖋️ Script firmado correctamente: $RutaScript" -ForegroundColor Green

# Verificar firma
$firma = Get-AuthenticodeSignature -FilePath $RutaScript
Write-Host "`n=== Verificando firma ===" -ForegroundColor Cyan
Write-Host "Estado: $($firma.Status)" -ForegroundColor Magenta

switch ($firma.Status) {
    "Valid" { Write-Host "✅ La firma es válida y de confianza." -ForegroundColor Green }
    "UnknownError" { Write-Host "⚠️ Firma encontrada, pero el certificado no es de confianza o hay un problema de ubicación." -ForegroundColor Yellow }
    default { Write-Host "❌ Estado de la firma: $($firma.Status)" -ForegroundColor Red }
}

Write-Host "`nProceso completado." -ForegroundColor Cyan
