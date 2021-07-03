$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.27.1/mongodb-compass-1.27.1-win32-x64.msi'
$checksum64 = '543ebadae3aab9a62bd6781e46e35d602e49997be97dd368b0df7bfc251a005e'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
