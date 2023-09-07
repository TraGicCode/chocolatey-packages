$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.4/mongodb-compass-readonly-1.39.4-win32-x64.msi'
$checksum64 = 'ec4cb4c05129377652ca4db5da33751d51c48f7cd58f5efcbbdff0d9b3d1b151'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
