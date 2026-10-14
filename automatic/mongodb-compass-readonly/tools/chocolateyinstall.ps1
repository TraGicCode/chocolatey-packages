$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.53.0/mongodb-compass-readonly-1.53.0-win32-x64.msi'
$checksum64 = 'f16a0e222292b3ff206159e126a261c0b1d0a8cc4982eab13bf7a71f8ebadb47'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
