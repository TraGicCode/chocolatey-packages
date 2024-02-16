$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.1/mongodb-compass-readonly-1.42.1-win32-x64.msi'
$checksum64 = '3417aa2deeca2ca33d2f2e5d225b9a4a71acf1c9a3ba2685d344dac3dbd30b1b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
