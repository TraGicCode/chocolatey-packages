$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.34.2/mongodb-compass-readonly-1.34.2-win32-x64.msi'
$checksum64 = '65c6210bb814332a1c37d8684826918a7352b3850e58e3c30ee636e0499c99c4'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
