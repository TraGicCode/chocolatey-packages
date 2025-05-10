$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.2/mongodb-compass-isolated-1.46.2-win32-x64.msi'
$checksum64 = 'a0841aba046007cd72b5ef5023fe72d6d25cbe888e05fff582a992118051385d'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
