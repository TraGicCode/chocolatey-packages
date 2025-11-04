$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.48.1/mongodb-compass-1.48.1-win32-x64.msi'
$checksum64 = 'd60e2e52158797aaec69e39d1263f2efa5f71b57ef77e20ab77d2b2955184aa9'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
