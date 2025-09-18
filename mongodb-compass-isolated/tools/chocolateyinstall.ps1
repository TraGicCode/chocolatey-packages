$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.11/mongodb-compass-isolated-1.46.11-win32-x64.msi'
$checksum64 = '7b22917cb5f9418ad184df4057ba5738783861a2ed03f43ceae61a450e8d74a4'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
