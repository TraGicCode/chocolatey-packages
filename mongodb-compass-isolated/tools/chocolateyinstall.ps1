$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.37.0/mongodb-compass-isolated-1.37.0-win32-x64.msi'
$checksum64 = '66a67bdf65525d766ae0d3bf9a4a29f0a856f1cce64c24885724148993e049fb'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
