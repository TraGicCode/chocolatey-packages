$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.4/mongodb-compass-isolated-1.39.4-win32-x64.msi'
$checksum64 = '252f0e620e98444347d48be187140a22108cbdc7c2e38250c69dc74afbbae42c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
