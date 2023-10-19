$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.4/mongodb-compass-readonly-1.40.4-win32-x64.msi'
$checksum64 = 'f0b2904f43f92b5efedbf27af387c921c78065b915b7ad32099bd2c40c74bdde'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
