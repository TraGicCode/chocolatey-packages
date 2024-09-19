$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.4/mongodb-compass-isolated-1.44.4-win32-x64.msi'
$checksum64 = 'bb0ab187507099866dcee4006f7bcee53640af8a4dd1ebd35e133d01c9feac2f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
