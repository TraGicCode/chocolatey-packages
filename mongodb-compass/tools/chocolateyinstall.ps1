$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.47.1/mongodb-compass-1.47.1-win32-x64.msi'
$checksum64 = 'ffa193729d890aad6f71b02c3f820aff8c365b946fb7cd8d7091cd56567a2c21'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
