### Remediation script to remove Mozilla Firefox

## Remove Mozilla Firefox
Start-process -FilePath 'C:\Program Files\Mozilla Firefox\uninstall\helper.exe' -ArgumentList "/S" -Wait
Write-Output "Firefox uninstalled"