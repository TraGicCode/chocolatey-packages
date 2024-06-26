$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.2/mongodb-compass-isolated-1.43.2-win32-x64.msi'
$checksum64 = 'cf047fae6336930aad5c061ce706141e38d70fb9ff45e279b377ef842bdd7e3e'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
