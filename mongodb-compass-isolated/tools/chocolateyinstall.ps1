$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.7/mongodb-compass-isolated-1.49.7-win32-x64.msi'
$checksum64 = '24e268e61dddb5d6388783a562223998fb18e3bddc9ae165aa61461626cb86b6'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
