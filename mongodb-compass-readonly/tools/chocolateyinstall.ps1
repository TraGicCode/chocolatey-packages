$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.2/mongodb-compass-readonly-1.31.2-win32-x64.msi'
$checksum64 = '7b1ad159e25d28bb783f681d1e8fac7b9b7122e69d75ed31c9221fc5a7f38bba'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
