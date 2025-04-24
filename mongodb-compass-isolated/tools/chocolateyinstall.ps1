$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.1/mongodb-compass-isolated-1.46.1-win32-x64.msi'
$checksum64 = '4987ecdc1b88445f96ba8a0193fdf7e21ad34047a2cde490c04b7c4aa8d9106d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
