### Detection script to find Mozilla Firefox installed or not

$firefoxPath = 'C:\Program Files\Mozilla Firefox\firefox.exe'

if (Test-Path -Path $firefoxPath) {
    $ver = (Get-Item -Path $firefoxPath).VersionInfo.FileVersion
    Write-Output "Firefox version $ver is installed"
    exit 1
} else {
    Write-Output "No Firefox installed"
    exit 0
}