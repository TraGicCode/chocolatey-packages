$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.0/mongodb-compass-readonly-1.31.0-win32-x64.msi'
$checksum64 = 'ff68e8a5a1e736e7c2d9ad782a5273b9fb76213e2d5e641a408c51e272cb8e4b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
