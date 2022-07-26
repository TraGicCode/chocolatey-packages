$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.5/mongodb-compass-1.32.5-win32-x64.msi'
$checksum64 = '99d24593c23a4f6a96301286250dffa9e7125af3cb44ba34457ef8d67c2617a4'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
