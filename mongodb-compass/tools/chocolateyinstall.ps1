$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.33.0/mongodb-compass-1.33.0-win32-x64.msi'
$checksum64 = '757946271783957a2dc81a56e9a9fbbb6918fb81e90673fb684de6ac6a6b8b8a'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
