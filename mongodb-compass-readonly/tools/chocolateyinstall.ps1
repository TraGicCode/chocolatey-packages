$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.33.1/mongodb-compass-readonly-1.33.1-win32-x64.msi'
$checksum64 = 'e971677e9a213159b5b456ad0d1750056923839104480c5c833dc3d14ffec5cf'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
