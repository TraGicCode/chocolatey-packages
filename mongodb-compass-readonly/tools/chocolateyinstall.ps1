$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.10/mongodb-compass-readonly-1.46.10-win32-x64.msi'
$checksum64 = 'c8644e6668c91f3d79982317066e8122d9677fa1fc20cec2160bf5f40a3dd08c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
