$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.7/mongodb-compass-readonly-1.49.7-win32-x64.msi'
$checksum64 = 'e2f14c4e32b43a478c48d229b0ce28c3d5742cf9c1b919912ffa89e5ef03538f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
