$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.11/mongodb-compass-1.49.11-win32-x64.msi'
$checksum64 = '16bf031913c6ccce5485960fda52b57e0933934e3bb3c18192e9a97c5e32b2c5'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
