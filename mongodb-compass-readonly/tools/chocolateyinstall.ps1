$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.0/mongodb-compass-readonly-1.44.0-win32-x64.msi'
$checksum64 = 'cf40a037aca0d6788543e0ec86423cf42bebf9c8915af1a4f3d430ea9ed50413'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
