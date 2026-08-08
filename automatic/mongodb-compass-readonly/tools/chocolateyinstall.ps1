$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.14/mongodb-compass-readonly-1.49.14-win32-x64.msi'
$checksum64 = '4A0DB04C11A1065EF05567FE50C72BB056B83B588DEC9D89F9EF54F0BEC2BA74'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
