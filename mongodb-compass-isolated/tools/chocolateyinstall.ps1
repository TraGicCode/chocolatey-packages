$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.3/mongodb-compass-isolated-1.45.3-win32-x64.msi'
$checksum64 = '2ba1daf862ee9c92c0e7a594f2c0fc9838c29b23a647d65e441d4c5f9e3ed5fe'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
