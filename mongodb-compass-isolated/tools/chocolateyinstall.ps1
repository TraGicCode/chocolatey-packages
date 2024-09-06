$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.3/mongodb-compass-isolated-1.44.3-win32-x64.msi'
$checksum64 = '6f865daf31a01d3b2ef91d193f6209741be62d1e92de617bcdfdd454b59a765c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
