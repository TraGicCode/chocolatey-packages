$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.7/mongodb-compass-isolated-1.44.7-win32-x64.msi'
$checksum64 = 'd0311efeb5b2ff775dd57f70dda6c973fba9c41404727371cd5f77d2dff2bddb'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
