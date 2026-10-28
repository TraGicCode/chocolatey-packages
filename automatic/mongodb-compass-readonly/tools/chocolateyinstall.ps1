$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.53.2/mongodb-compass-readonly-1.53.2-win32-x64.msi'
$checksum64 = '17fceca76238551ddad87ab571be856ab0c4c6f1d9ac4ea68d880826924572f0'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
