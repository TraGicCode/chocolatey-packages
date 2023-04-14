$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.3/mongodb-compass-1.36.3-win32-x64.msi'
$checksum64 = 'c3329ca2c4920b0c3b5c43bb00520669ca1d15414c1971c1ccb5831d6b10aafb'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
