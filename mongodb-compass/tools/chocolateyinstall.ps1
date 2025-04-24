$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.1/mongodb-compass-1.46.1-win32-x64.msi'
$checksum64 = 'a9c55ae8be3e2e97bd3b4483edb9528a3d240248e4fa11751d5adf3f12ffc7a3'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
