$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.38.0/mongodb-compass-1.38.0-win32-x64.msi'
$checksum64 = '87a3448d2bb8e5d6144a97d794ae64918d35fd3ee716c4818b4f3774887e46cb'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
