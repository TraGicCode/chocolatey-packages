$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.37.0/mongodb-compass-readonly-1.37.0-win32-x64.msi'
$checksum64 = '265f559664229755d18808c6ab2a2916fcfb2cd58782209f74c10561a9259c88'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
