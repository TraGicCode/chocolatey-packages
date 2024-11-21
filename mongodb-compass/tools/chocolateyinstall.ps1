$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.7/mongodb-compass-1.44.7-win32-x64.msi'
$checksum64 = '17ff4fa7353b6f94f8acf1eb592022e9e01ace0e93ba8e0d2680fe933ed680ad'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
