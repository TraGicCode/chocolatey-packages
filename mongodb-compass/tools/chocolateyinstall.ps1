$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.26.1/mongodb-compass-1.26.1-win32-x64.msi'
$checksum64 = '11a7553b097450adbca9a414e6165b7ce08a2571c3ded1dea8bb9affac4ef194'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
