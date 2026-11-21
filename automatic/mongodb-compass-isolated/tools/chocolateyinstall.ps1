$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.53.3/mongodb-compass-isolated-1.53.3-win32-x64.msi'
$checksum64 = 'efae133dcdfd1c431a91b7469e48c907640965df9a2e4f57ce9deb56a08eb364'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
