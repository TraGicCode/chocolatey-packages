$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.5/mongodb-compass-isolated-1.42.5-win32-x64.msi'
$checksum64 = '8c5fe28e5db298bec3bbba7fb955f195ea1ab248137d99191c16e8a37641edc6'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
