$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.0/mongodb-compass-isolated-1.45.0-win32-x64.msi'
$checksum64 = 'fd0eb2f1d90fcdeb96d8dfa618d0bc0c79e1b1ed3a4bb640495404225cc778d1'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
