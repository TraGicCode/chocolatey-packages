$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.5/mongodb-compass-1.46.5-win32-x64.msi'
$checksum64 = '93ffb84ae60f017d0c6c7eb72542e1caa3ac86924fc5a8c54ad259009eb970b2'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
