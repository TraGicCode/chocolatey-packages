$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.4/mongodb-compass-1.40.4-win32-x64.msi'
$checksum64 = 'ca45cf53aa58ae8d632070e3f3cbe742741850fd7d6f4be19a8b1d5c671acb92'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
