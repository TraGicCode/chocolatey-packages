$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.4/mongodb-compass-readonly-1.46.4-win32-x64.msi'
$checksum64 = '62811fb9518522acbe5328b47ef28ae3b61bb2eff97256f63d0035b4b3770abe'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
