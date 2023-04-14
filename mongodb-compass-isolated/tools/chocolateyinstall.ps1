$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.3/mongodb-compass-isolated-1.36.3-win32-x64.msi'
$checksum64 = '34d9b11745f0a0e0979a4a7aaade24736c9731fb5f91d216fd3805cf9ed30e4c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
