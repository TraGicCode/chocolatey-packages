$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.23.0/mongodb-compass-readonly-1.23.0-win32-x64.msi'
$checksum64 = '4b255e82e8cb1bf0e3aff4a3a2003cf7a5977203c949191fa8c4663521f94242'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
