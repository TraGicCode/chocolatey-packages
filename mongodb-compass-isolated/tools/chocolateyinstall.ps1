$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.3/mongodb-compass-isolated-1.31.3-win32-x64.msi'
$checksum64 = 'f69367c3b5cb7628c22d0170b8a24b704f9d4de45dd196426caca6f807591281'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
