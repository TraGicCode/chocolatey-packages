$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.47.1/mongodb-compass-readonly-1.47.1-win32-x64.msi'
$checksum64 = 'bdf663325100c66265acb5e8ad1fb1c6144dc9eb5e4704139b4f66958c24138b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
