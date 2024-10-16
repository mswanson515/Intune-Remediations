### Remediation script to remove Mozilla Firefox

# Define the path to the uninstaller
$uninstallerPath = 'C:\Program Files\Mozilla Firefox\uninstall\helper.exe'

# Check if the uninstaller exists
if (Test-Path -Path $uninstallerPath) {
    # Run the uninstaller silently
    Start-Process -FilePath $uninstallerPath -ArgumentList "/S" -Wait
    Write-Output "Firefox uninstalled"
    
    # Remove Firefox user data
    Remove-Item -Path "$env:APPDATA\Mozilla\Firefox" -Recurse -Force
    Remove-Item -Path "$env:LOCALAPPDATA\Mozilla\Firefox" -Recurse -Force
    
    # Remove Firefox program files
    Remove-Item -Path "$env:ProgramFiles\Mozilla Firefox" -Recurse -Force
    
    # Remove Firefox from the start menu
    Remove-Item -Path "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox.lnk" -Force
} else {
    Write-Output "Firefox uninstaller not found"
}