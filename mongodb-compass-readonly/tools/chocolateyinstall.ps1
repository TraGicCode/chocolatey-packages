$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.24.1/mongodb-compass-readonly-1.24.1-win32-x64.msi'
$checksum64 = '0b40e3948258eaaf6db5de0baa1c05fb395cc7ce5a5f2e6121f02c6886bfea28'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
