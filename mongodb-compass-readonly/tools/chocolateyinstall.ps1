$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.0/mongodb-compass-readonly-1.45.0-win32-x64.msi'
$checksum64 = '07de6349529f33ba1ca416f96e80de0b5dadffd2191c6c4fbdb9d23f21b81e6d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
