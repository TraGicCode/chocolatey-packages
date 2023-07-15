$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.0/mongodb-compass-1.39.0-win32-x64.msi'
$checksum64 = 'fc4d7270e30c291aec58a29d57229db4aa60724d923b997cdb1aa8e2c7e0f68f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
