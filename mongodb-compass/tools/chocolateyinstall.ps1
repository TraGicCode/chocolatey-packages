$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.0/mongodb-compass-1.40.0-win32-x64.msi'
$checksum64 = 'e44d54e6cdb42515b5456bdc6d84befcdde7fb028cfd9022bb2679c41241823f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
