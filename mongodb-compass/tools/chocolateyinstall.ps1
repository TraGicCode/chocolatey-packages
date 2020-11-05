$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.23.0/mongodb-compass-1.23.0-win32-x64.msi'
$checksum64 = '9af08e472d2eed9867191f9bfe567b95372ca8f41b600e1944dceb4a8a447643'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
