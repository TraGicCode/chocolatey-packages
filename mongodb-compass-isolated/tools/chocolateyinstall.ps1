$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.4/mongodb-compass-isolated-1.45.4-win32-x64.msi'
$checksum64 = 'a77d5ad0e0ce6015da8c05059b1732dbc8c771f37f9c98a05896cbe97738e6d8'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
