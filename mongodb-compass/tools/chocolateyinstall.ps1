$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.3/mongodb-compass-1.43.3-win32-x64.msi'
$checksum64 = '3c3142e8ea47ff6e9868c9b6b7b33a928f90f7ba59ccd4945d5df989ee285e24'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
