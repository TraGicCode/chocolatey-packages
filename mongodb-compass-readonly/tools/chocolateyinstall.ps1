$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.3/mongodb-compass-readonly-1.46.3-win32-x64.msi'
$checksum64 = '1deb5f5413419516c0438b2a97dc55237c4ca61bf452b5d8cd256b1bb961aac9'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
