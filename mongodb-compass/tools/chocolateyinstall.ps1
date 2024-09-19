$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.4/mongodb-compass-1.44.4-win32-x64.msi'
$checksum64 = '30939aeedf1eee6356600286eb3232178d6fa27e70e80220d5a675ff1a2b99e8'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
