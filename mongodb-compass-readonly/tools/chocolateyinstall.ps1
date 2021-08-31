$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.28.4/mongodb-compass-readonly-1.28.4-win32-x64.msi'
$checksum64 = 'f4fc1f4400db612d478ea5c6dde27b0b39fd318f53dcb269f4194dc9a88223aa'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
