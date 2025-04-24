$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.1/mongodb-compass-readonly-1.46.1-win32-x64.msi'
$checksum64 = 'e13877168aea2381f1f10f07a0e3619475ff7853d59d278bd9b0afbeaac0c688'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
