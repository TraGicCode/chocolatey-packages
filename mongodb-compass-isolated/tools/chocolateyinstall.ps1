$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.0/mongodb-compass-isolated-1.31.0-win32-x64.msi'
$checksum64 = 'b0b68378dafeddcf8fc3b296bc20c34a721e957d2092071c09f5351c08100b32'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
