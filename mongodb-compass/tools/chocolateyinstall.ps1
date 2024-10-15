$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.5/mongodb-compass-1.44.5-win32-x64.msi'
$checksum64 = 'de4749792e5462c368e2e19e5dbd660e8ea097faa22ed490fb58cf62f95054dd'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
