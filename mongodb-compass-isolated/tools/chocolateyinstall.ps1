$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.2/mongodb-compass-isolated-1.45.2-win32-x64.msi'
$checksum64 = 'ebffa4302ae476d14acf388d2263a48c3ca45717bef3afb5219dd8fb550d29ad'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
