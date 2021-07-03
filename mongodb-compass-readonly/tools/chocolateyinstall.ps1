$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.27.1/mongodb-compass-readonly-1.27.1-win32-x64.msi'
$checksum64 = '2f1aa2c9ccb8075629ce098e092ca495fb71d2592a476d79e9c7695d9c67b734'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
