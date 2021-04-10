$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.26.1/mongodb-compass-isolated-1.26.1-win32-x64.msi'
$checksum64 = 'f95dcdeba91202f8432a4176739681c0772e1ea2d34915dcd048d28e5e97150d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
