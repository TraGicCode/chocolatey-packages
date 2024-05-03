$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.0/mongodb-compass-1.43.0-win32-x64.msi'
$checksum64 = 'b5f83adab048042a74985ae3320e5e2e40502b412c21eca3a5bf93c1f1bfcf04'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
