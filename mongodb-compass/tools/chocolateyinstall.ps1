$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.9/mongodb-compass-1.46.9-win32-x64.msi'
$checksum64 = '82506ffa1ed3a10df6fcdfbfdb8a2450fabe253c7b12e3711ad9e524319073e2'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
