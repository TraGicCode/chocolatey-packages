$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.0/mongodb-compass-isolated-1.39.0-win32-x64.msi'
$checksum64 = '35afe6b23c7215a77da727cc46b909aaf80afdf2a7926d53733a4e729b103b0e'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
