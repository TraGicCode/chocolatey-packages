$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.33.1/mongodb-compass-1.33.1-win32-x64.msi'
$checksum64 = '9f4935bfcf85fadb42ee05b209b86f0b8f4b67addc096bb03dc7148b30aa8384'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
