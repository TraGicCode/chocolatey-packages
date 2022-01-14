$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.30.1/mongodb-compass-isolated-1.30.1-win32-x64.msi'
$checksum64 = 'fce5ef3125661b403e6b9c4ee4143d322e8e13dea9044f0434949b3aab7aeca3'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
