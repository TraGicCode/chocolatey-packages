$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.1/mongodb-compass-isolated-1.36.1-win32-x64.msi'
$checksum64 = '0fb11e0e1902d22808e8775b2ad899f7dea4e17728b46de064121048fc1ff677'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
