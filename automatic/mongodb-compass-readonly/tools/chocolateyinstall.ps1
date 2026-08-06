$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.12/mongodb-compass-readonly-1.49.12-win32-x64.msi'
$checksum64 = 'dcea08de2ccb8c90e97798f68386d65e907c7ae8d66eacc388fc1625eb2f55bf'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
