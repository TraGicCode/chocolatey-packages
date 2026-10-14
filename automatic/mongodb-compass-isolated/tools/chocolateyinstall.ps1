$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.53.0/mongodb-compass-isolated-1.53.0-win32-x64.msi'
$checksum64 = '3511c9cfebcbd1a96b9b39f77d18b0594a4aa6477995f726dcf74afc2bc0d172'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
