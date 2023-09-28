$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.2/mongodb-compass-isolated-1.40.2-win32-x64.msi'
$checksum64 = '38f8c31cdbfaf4e07c6d9613d433afdc08b3e99c193818550b20d96d452ab46f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
