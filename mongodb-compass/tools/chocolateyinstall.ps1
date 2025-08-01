$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.7/mongodb-compass-1.46.7-win32-x64.msi'
$checksum64 = '65caf6143c48c8b3a84d6e45a15d27ae34480ca5f903b9661518e6e5a5c10390'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
