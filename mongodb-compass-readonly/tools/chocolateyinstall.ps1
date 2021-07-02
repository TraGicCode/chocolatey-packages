$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.27.0/mongodb-compass-readonly-1.27.0-win32-x64.msi'
$checksum64 = '6710dc0c5cd04a79e35a77d03569e0452a4fda1f7c3752b13887050ce9a4d0d1'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
