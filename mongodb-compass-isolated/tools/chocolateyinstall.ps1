$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.1/mongodb-compass-isolated-1.39.1-win32-x64.msi'
$checksum64 = '8b0f6ecd9809bfffcc54f14f94639f5e566629d681eae99ab29bfe5cf7c9dfca'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
