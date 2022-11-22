$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.34.0/mongodb-compass-isolated-1.34.0-win32-x64.msi'
$checksum64 = 'c1c34c20d129c35ddf4d421cdfd8f1a22195468fbe2d3ca96f0a1fcc1c78aab4'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
