$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.53.2/mongodb-compass-isolated-1.53.2-win32-x64.msi'
$checksum64 = '4e513a5ee9f8e1b7d670bb3f9df6cedd356da0dd5d223a343c401502db2a02ab'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
