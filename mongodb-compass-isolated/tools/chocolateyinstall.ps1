$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.0/mongodb-compass-isolated-1.46.0-win32-x64.msi'
$checksum64 = 'ebb7de1bb540f571769983dee9d3fdf1fae2d6286b3d8ff040978ea433df8bad'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
