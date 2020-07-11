$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.21.2/mongodb-compass-1.21.2-win32-x64.msi'
$checksum64 = 'C00ADC2E1C66D76DEA9B642A43D71A15FFD2F3C2F71216CC363C10DE1839EBFB'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
