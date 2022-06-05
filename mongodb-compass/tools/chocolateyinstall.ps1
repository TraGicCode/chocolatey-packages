$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.1/mongodb-compass-1.32.1-win32-x64.msi'
$checksum64 = '6613f830ddd2d2f14b6ddf08d4f36d098ae40973b63e98bd41d28da0bc729246'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
