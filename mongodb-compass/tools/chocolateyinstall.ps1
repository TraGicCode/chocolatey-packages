$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.2/mongodb-compass-1.39.2-win32-x64.msi'
$checksum64 = '98f3a3fe038978376d98a7cbdf1559b7fd62dcc7f24e3f6cbd01650c209c5a0f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
