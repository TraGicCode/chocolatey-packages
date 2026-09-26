$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.51.0/mongodb-compass-isolated-1.51.0-win32-x64.msi'
$checksum64 = 'FF6CB141C80963BAD5CD32E039993B304C9BD3CDFE1214A879F98BFA9665D2D8'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
