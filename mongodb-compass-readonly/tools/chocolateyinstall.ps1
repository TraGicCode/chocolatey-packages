$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.5/mongodb-compass-readonly-1.43.5-win32-x64.msi'
$checksum64 = 'aa71c48f96af4cd5e7f23328954f5ce0fe54ffb113207d97dd9415974e0eaea3'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
