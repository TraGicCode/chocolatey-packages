$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.0/mongodb-compass-1.36.0-win32-x64.msi'
$checksum64 = 'a5714f7d5da56d5e7bf81b3b5ccbdaaf35853aea5d6013c11b508fe75f3237e1'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
