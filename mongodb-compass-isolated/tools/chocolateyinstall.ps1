$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.2/mongodb-compass-isolated-1.31.2-win32-x64.msi'
$checksum64 = '4a465b3a15d6ec65c734486d8bf8f5d901134d21485b9dcda094413366c85c00'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
