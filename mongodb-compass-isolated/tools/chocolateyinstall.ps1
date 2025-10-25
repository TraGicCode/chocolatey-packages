$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.48.0/mongodb-compass-isolated-1.48.0-win32-x64.msi'
$checksum64 = 'cd5821875ce593727fa7739e2d88cce78450cc36c767a4841a510fc70d3ac730'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
