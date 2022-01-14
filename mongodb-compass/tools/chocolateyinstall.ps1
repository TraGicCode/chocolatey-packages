$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.30.1/mongodb-compass-1.30.1-win32-x64.msi'
$checksum64 = 'ceefb2e774b4b620823dd39349f8dadc39ed24b50833db97931b1af2e0c1d59a'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
