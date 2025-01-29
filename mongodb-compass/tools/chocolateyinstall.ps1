$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.2/mongodb-compass-1.45.2-win32-x64.msi'
$checksum64 = 'a2106f30486c8d617f6a3767be05c2127fe070830f82aeb5a53e8fde1d2c890a'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
