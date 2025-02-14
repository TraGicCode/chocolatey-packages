$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.3/mongodb-compass-readonly-1.45.3-win32-x64.msi'
$checksum64 = '8280f32124bfb98b45e567c8f577781dda4ebebe98f9a59a8bc7aa7d56ab4c63'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
