$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.53.3/mongodb-compass-1.53.3-win32-x64.msi'
$checksum64 = '5a9d8452eea1dd2a8a66d4d3dcb6fa53f965f9c24437a99a915c235057a0e786'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
