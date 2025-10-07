$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.47.0/mongodb-compass-isolated-1.47.0-win32-x64.msi'
$checksum64 = '46f99990e356a489d3e30784381ca1d83deb5398609a71a71484b25f7c2f265d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
