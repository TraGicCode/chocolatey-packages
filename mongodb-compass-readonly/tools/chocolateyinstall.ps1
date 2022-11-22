$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.34.0/mongodb-compass-readonly-1.34.0-win32-x64.msi'
$checksum64 = '940c8ee53e468d49da7fc8f663a0f5c437c0c22c3aefd6db23d7f1dd4a7c76ae'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
