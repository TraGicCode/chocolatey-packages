$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.0/mongodb-compass-readonly-1.49.0-win32-x64.msi'
$checksum64 = '46b28bfabcb67ab22f395236111c30c39a6fc00734ac276544bb2ddf93bd5703'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
