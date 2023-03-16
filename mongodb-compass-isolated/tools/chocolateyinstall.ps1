$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.0/mongodb-compass-isolated-1.36.0-win32-x64.msi'
$checksum64 = 'bb1af93c97d3f057e404592448ed6a2cf98eb5344de1620a2358266343883f88'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
