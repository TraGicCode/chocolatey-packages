$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.15/mongodb-compass-readonly-1.49.15-win32-x64.msi'
$checksum64 = '1ECB95FE17BD111C0A4A9C3DB27DC0D250C79FA5F1F9DE4A0325B35592DA796E'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
