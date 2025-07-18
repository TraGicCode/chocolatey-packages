$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.6/mongodb-compass-isolated-1.46.6-win32-x64.msi'
$checksum64 = '7bf22da27c2cdfe7d50ba3d05c4863c96597cbee632d9984ba4dfe236732cbc0'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
