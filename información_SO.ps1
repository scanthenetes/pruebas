# Obtener información del sistema operativo
$osInfo = Get-CimInstance -ClassName Win32_OperatingSystem

# Mostrar información relevante
Write-Host "Nombre del Sistema Operativo: $($osInfo.Caption)"
Write-Host "Versión: $($osInfo.Version)"
Write-Host "Arquitectura: $($osInfo.OSArchitecture)"
Write-Host "Fabricante: $($osInfo.Manufacturer)"
Write-Host "Número de Serie: $($osInfo.SerialNumber)"
Write-Host "Versión del Producto: $($osInfo.BuildNumber)"
Write-Host "Usuario Registrado: $($osInfo.RegisteredUser)"
Write-Host "Organización Registrada: $($osInfo.Organization)"
Write-Host "Tiempo de Actividad (en segundos): $($osInfo.LastBootUpTime) - tiempo desde el último arranque"