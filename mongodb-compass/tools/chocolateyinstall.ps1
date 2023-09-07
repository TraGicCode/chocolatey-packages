$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.4/mongodb-compass-1.39.4-win32-x64.msi'
$checksum64 = 'e1124b897e7c8e356dd2d65de144dedbf47be211a42908e3730e60b1023e98cb'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
