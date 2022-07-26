$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.5/mongodb-compass-isolated-1.32.5-win32-x64.msi'
$checksum64 = 'f71500f5496639e0e67f2fb76c8b9b1829605e0ce5dcd0d113220e27dc735945'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
