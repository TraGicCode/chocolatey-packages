$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.29.6/mongodb-compass-1.29.6-win32-x64.msi'
$checksum64 = '8ebb2e6c3d54c46e4975a5ab6f0c51e524c4fa84bc41a28a8c90ee8814c14342'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
