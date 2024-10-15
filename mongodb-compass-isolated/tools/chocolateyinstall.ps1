$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.5/mongodb-compass-isolated-1.44.5-win32-x64.msi'
$checksum64 = 'b2afd49d1a9e9c6f4c51226050384ec3742bc4e9547bccd80e9a2fba6a2ccf9a'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
