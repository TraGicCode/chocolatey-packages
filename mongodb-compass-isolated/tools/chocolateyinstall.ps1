$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.35.0/mongodb-compass-isolated-1.35.0-win32-x64.msi'
$checksum64 = '6037dea73e199fe6c32f25b0ce6718f8a7f345cbb462c258bcf05e241c735e9d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
