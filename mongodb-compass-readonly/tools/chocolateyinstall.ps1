$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.38.2/mongodb-compass-readonly-1.38.2-win32-x64.msi'
$checksum64 = '4277196aed5a2d3af8b86f51c4232738c68dd4fa70333bed21fe75623a1ebc18'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
