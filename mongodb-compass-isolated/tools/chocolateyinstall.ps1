$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.0/mongodb-compass-isolated-1.32.0-win32-x64.msi'
$checksum64 = '65b31a60edf28681a01dac560686bf1850c0d4e8971bf4b94e02cfb8b342d9e9'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
