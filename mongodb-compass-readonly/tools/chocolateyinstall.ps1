$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.48.2/mongodb-compass-readonly-1.48.2-win32-x64.msi'
$checksum64 = '4e4bc21da5840dfea81f9897ae19aca6789b50e35a6498c700dfffca4d83e65f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
