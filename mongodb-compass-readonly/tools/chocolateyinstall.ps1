$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.6/mongodb-compass-readonly-1.49.6-win32-x64.msi'
$checksum64 = 'e143b8c72581d3121c9aaaedd732a67a043eb1e6fff2af0be0f5e70b7a00cf75'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
