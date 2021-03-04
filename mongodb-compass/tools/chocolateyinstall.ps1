$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.26.0/mongodb-compass-1.26.0-win32-x64.msi'
$checksum64 = '80952d04b3421377ae45649a9fdbbc28b0f20bd3424030639e2a5554d1aea4ea'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
