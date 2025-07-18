$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.6/mongodb-compass-1.46.6-win32-x64.msi'
$checksum64 = 'b038fccb38e6ef8fd48d027b722718577b820c36abdcd65dd36a3623aa15e2c5'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
