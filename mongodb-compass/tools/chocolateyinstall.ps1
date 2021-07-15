$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.28.1/mongodb-compass-1.28.1-win32-x64.msi'
$checksum64 = '46de052f7bcfb616556be70459bbd7a0446b3eb6d12bbf920af7b1f7203c2d2b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
