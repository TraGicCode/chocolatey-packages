$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.29.4/mongodb-compass-1.29.4-win32-x64.msi'
$checksum64 = '7738a3f7aa7646cf2f4fdc0b8a8536be0f7ec4d7406f7b5e8b22b078d996857e'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
