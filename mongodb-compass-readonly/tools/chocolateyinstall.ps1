$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.5/mongodb-compass-readonly-1.42.5-win32-x64.msi'
$checksum64 = 'ea2f3413b6e8fdd63ee0de467a9fa9d3201f2d00785cd73ccd6d452f84f84937'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
