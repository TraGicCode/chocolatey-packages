$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.12/mongodb-compass-1.49.12-win32-x64.msi'
$checksum64 = '2a03f58827bdab485a38b5d9f6a8ee5517d7515e7f9aad95769daa0fc30ab47f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
