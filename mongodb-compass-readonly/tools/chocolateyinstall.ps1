$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.48.1/mongodb-compass-readonly-1.48.1-win32-x64.msi'
$checksum64 = 'ea85f9010ccdd1b27d0a71e10bc94a638225dc8f16014c3fc8b501b7b93503bd'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
