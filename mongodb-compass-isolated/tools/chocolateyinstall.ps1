$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.1/mongodb-compass-isolated-1.32.1-win32-x64.msi'
$checksum64 = 'ba203cfc303ef83a198f68ad199452a335b7379195cb6f490b7ceb30d946eb00'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
