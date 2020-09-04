$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.22.1/mongodb-compass-readonly-1.22.1-win32-x64.msi'
$checksum64 = '0a071bf7e98a7e4d7ec86639b735fd8ebd65ab047c84d889a820a53de0590c9b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
