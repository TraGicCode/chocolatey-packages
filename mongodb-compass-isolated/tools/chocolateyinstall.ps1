$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.41.0/mongodb-compass-isolated-1.41.0-win32-x64.msi'
$checksum64 = '3947984ecbc42921fa02022207d14a058326f94b91ba4e8d8a74b17c7f4f86c6'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
