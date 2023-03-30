$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.2/mongodb-compass-isolated-1.36.2-win32-x64.msi'
$checksum64 = 'df6ac064a8d3882d784d9a919be4c6c8eaad185850a0824bbdd9de01d400829b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
