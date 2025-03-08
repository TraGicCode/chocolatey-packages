$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.4/mongodb-compass-readonly-1.45.4-win32-x64.msi'
$checksum64 = '2dbd53a1d0f0dcf01d808b6cae12cb620e676c7eeda181c1a2aa6c9543f995f6'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
