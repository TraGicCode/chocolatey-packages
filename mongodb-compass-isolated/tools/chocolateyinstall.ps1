$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.4/mongodb-compass-isolated-1.49.4-win32-x64.msi'
$checksum64 = '2268f05d74b4ad56de679ef20809a74064a5d798d0f3e1dc711ca5d05106b1fa'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
