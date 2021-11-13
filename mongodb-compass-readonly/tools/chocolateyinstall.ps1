$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.29.4/mongodb-compass-readonly-1.29.4-win32-x64.msi'
$checksum64 = 'c463f1a2556bd05fe975b52f3445465a3cee5d5f018d0095fdf33ab3735155e5'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
