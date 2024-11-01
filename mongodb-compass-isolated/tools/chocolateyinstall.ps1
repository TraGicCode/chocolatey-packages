$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.6/mongodb-compass-isolated-1.44.6-win32-x64.msi'
$checksum64 = 'df59aab64f77b78d08789a0fc49bf2d2d136b7b507592bcb7ff9153372a3b5dc'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
