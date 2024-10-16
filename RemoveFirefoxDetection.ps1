### Detection script to find Mozilla Firefox installed or not

if(test-path -Path 'C:\Program Files\Mozilla Firefox\firefox.exe')
{
    $ver = (Get-Item -Path 'C:\Program Files\Mozilla Firefox\firefox.exe').VersionInfo.FileVersion
    Write-Output "Firefox version $ver is installed"
    exit 1
}
else
{
    Write-Output "No firefox installed"
    exit 0
}