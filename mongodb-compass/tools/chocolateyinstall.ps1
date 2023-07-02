$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.38.2/mongodb-compass-1.38.2-win32-x64.msi'
$checksum64 = 'a10b98e3ac2985ee0c09e0b30bad2af5dbad343b136def2600e626a96572b023'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
