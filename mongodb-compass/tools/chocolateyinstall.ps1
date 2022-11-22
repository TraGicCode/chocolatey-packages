$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.34.0/mongodb-compass-1.34.0-win32-x64.msi'
$checksum64 = '247e4e564f6ce2fa40fa1cbf631da78c4e666a1c55b52b8d688b14585fbff979'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
