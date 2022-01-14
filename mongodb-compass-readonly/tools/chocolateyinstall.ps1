$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.30.1/mongodb-compass-readonly-1.30.1-win32-x64.msi'
$checksum64 = '635e2be3df5ad2f5c29a99efc6034d94bdf2be6683c6942e052fc8ced8aebdb1'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
