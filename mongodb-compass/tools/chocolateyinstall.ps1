$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.3/mongodb-compass-1.40.3-win32-x64.msi'
$checksum64 = '3c8b1412d0109a030f1d48af2dfbc8cc9363f94448315d15f5dc4f27853c9a79'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
