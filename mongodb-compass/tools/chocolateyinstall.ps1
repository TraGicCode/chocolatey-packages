$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.34.2/mongodb-compass-1.34.2-win32-x64.msi'
$checksum64 = 'ec704fd61f4e7fba4dfedadf71c06e01c302d1d918222cad6f4ddc0f19f725b5'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
