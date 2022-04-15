$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.2/mongodb-compass-1.31.2-win32-x64.msi'
$checksum64 = '7e4337b5bfb555525473d88868477a8f722bc832d25d9101f664eb3cf6bb3138'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
