$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.3/mongodb-compass-isolated-1.46.3-win32-x64.msi'
$checksum64 = '2a0407a9aada0b4cf9ff3fddb253711488106244d588cc5eee3a7e113eab0f3c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
