$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.47.0/mongodb-compass-readonly-1.47.0-win32-x64.msi'
$checksum64 = '963a173799e68f747c9595da589a7ecd2236ab875ab8924cf701d20b67398dcc'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
