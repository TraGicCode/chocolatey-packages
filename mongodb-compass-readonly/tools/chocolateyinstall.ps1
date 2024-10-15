$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.5/mongodb-compass-readonly-1.44.5-win32-x64.msi'
$checksum64 = '63e3b98c63c45c9878d598bb24543337944992a1bd4cafb2440d6997e5f40e69'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
