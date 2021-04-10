$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.26.1/mongodb-compass-readonly-1.26.1-win32-x64.msi'
$checksum64 = 'd30d65f327ca2ee69880a2c0b7efc3ba88106e3adc48f6c5400d72c212cc085f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
