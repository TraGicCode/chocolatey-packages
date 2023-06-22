$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.38.0/mongodb-compass-isolated-1.38.0-win32-x64.msi'
$checksum64 = '79a240fb31a0f348859747805ffcd2fa7edb9008381c0e820bd9f48c9b58fe4d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
