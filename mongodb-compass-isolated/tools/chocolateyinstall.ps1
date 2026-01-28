$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.1/mongodb-compass-isolated-1.49.1-win32-x64.msi'
$checksum64 = '16319f8fe62ce3915d8df5a119b9c683ca7873bf8d8b2c189b5ff85b136e6e33'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
