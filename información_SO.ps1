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
# SIG # Begin signature block
# MIIFhQYJKoZIhvcNAQcCoIIFdjCCBXICAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUpaplWfZpLUXwbd6JcMbx5XEJ
# 6KCgggMYMIIDFDCCAfygAwIBAgIQPsbmyDkOXbxFSRHFhjKjmDANBgkqhkiG9w0B
# AQsFADAiMSAwHgYDVQQDDBdDZXJ0aWZpY2Fkb0Zpcm1hU2NyaXB0czAeFw0yNTEx
# MDQyMDMzMzlaFw0yNjExMDQyMDUzMzlaMCIxIDAeBgNVBAMMF0NlcnRpZmljYWRv
# RmlybWFTY3JpcHRzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvxA5
# 9VML56BETsZHenBwYE95JDX8rQOMWCbR44YqTs3+vWhG1jS9JkMuDvaPwJHN1AuA
# WMg3OBs6vZKHErohG58YOJnZrHxCf3otipt8NcXJ3Rbg2xONVOg79IZyt7E+ssam
# yWV5+ByRwpku6LW1BA8fGGncMXbiTBvNtLyFBBVV1crDyw7eTGV6PjfVjKCphVCl
# P2McYrkVJ+rgMIUR1B0Gj1Ofy4avuqVC7E0urd4di+Rm334QEnIiQKvku6wLc42w
# doTMCCbyTwBCpILK/zZwBEyFFA1mCJXneqsEKLjPtDASy0aYSJdO+pajBVHOLj1C
# fN00JTJgiq7St6WYNQIDAQABo0YwRDAOBgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAww
# CgYIKwYBBQUHAwMwHQYDVR0OBBYEFAEe1tMPFsDLPaMcOf7j7Sz+Uom5MA0GCSqG
# SIb3DQEBCwUAA4IBAQBTUYjaQEfhXi9uK8hiWrji/0tE+JqnFsp7+qoExsPY5RGb
# j9rlquqVjXEOQod1gUI/yeALEI4jMJz7NzBhPtU3QzZxRsTUo6Hg/KopUihI3MFC
# LkyLu0xNvNY79IpgWC4T4JBwkhslEuHR6ULSnM95i+VvmI9xEn4IV+WC/JDyn6yh
# k3q7dKmlQo66/Cb+/uWx8k0Q52kAmKoDM3KDGcX5uHmktat2GXoKF9n6e9gFFCg8
# KU86uyx0pyYBhOQT7VXys68F25jvOD8HtwT3EJCB9Dsj8npeEQvnA1KCEeYEr3Nr
# cc5W7kEJewhaVcqYX81JIflVWyEl54JyOCXmkevvMYIB1zCCAdMCAQEwNjAiMSAw
# HgYDVQQDDBdDZXJ0aWZpY2Fkb0Zpcm1hU2NyaXB0cwIQPsbmyDkOXbxFSRHFhjKj
# mDAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG
# 9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIB
# FTAjBgkqhkiG9w0BCQQxFgQUDvZgMB4HvgmC6OMwQbnFQenf8dkwDQYJKoZIhvcN
# AQEBBQAEggEAFs10Vq5QIY5iWLMLm0dqONls5M89+QjjYjd/idPHoMJ9tjWEm/lF
# iGVp9JWRM0Rq4MpoU3OlFF4K07lUsLKXTIidmgSHaPKECkENyUuzqPO5+nlfWjQ5
# Jf8Vs8Z6r/RI0ZmIkjqtXnaREUVfGlTtcCJtgzJh4P+Nh2QBjbloulQHBtf43tuR
# ybp96B9xnZ6bVjsRuDXMS5UI8qYuLiuw25bjXBF7beuM1RzZ4tIssvTIc/1T6FDb
# d9Xv0mIaQSvHg7pybnk1lbXsI7I4FUrEX+13gAzbIxNmX6EnGasFRN78dnDMc51i
# lmxgufU/L8JNwr2BY9DWN9UNZEsC5i9voA==
# SIG # End signature block
