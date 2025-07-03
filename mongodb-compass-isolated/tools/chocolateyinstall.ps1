$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.5/mongodb-compass-isolated-1.46.5-win32-x64.msi'
$checksum64 = 'ce4591f9836d2f77fe330e25c84d6f23cdf1ee1886adc125271013a5df22a7c1'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
