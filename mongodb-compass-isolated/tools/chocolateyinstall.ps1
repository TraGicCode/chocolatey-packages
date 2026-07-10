$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.11/mongodb-compass-isolated-1.49.11-win32-x64.msi'
$checksum64 = '1f62d2b3c0fde4d71c90fd82183ac042cceb8e4e6758f21e156479307c11c49d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
