$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.1/mongodb-compass-readonly-1.39.1-win32-x64.msi'
$checksum64 = '6d8d2c9b1ddf40f97778b15f15ad7b9bf4ab3ff458e621e0e2fd28a2acf075d7'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
