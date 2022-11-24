$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.34.1/mongodb-compass-isolated-1.34.1-win32-x64.msi'
$checksum64 = 'a8e05fd77905e051f72a89a958884f847272443f5b9746cf29bcd2f65f48c726'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
