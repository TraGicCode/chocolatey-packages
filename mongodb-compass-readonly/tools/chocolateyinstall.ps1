$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.3/mongodb-compass-readonly-1.49.3-win32-x64.msi'
$checksum64 = '3a0a84d21dc0c7694c5b7079c599874df5c582aa6af45f77fe5a3a9b98562814'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
