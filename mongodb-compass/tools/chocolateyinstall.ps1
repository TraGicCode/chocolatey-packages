$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.2/mongodb-compass-1.42.2-win32-x64.msi'
$checksum64 = '3ce842a5a054c46bd6589ca37ce8ca8e9c03f16d63a0ff89746d73e34f430feb'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
