$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.0/mongodb-compass-1.45.0-win32-x64.msi'
$checksum64 = '855e176e8658e51cbff089c986ed16bb79c5f3d0b5603e8c18a0644b471f8c0c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
