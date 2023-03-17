$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.1/mongodb-compass-readonly-1.36.1-win32-x64.msi'
$checksum64 = '996c5d047991cc937a92cf17a115c72f4543819dd8e8b3562e7e698b4c60b02b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
