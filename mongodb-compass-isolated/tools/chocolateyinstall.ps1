$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.2/mongodb-compass-isolated-1.39.2-win32-x64.msi'
$checksum64 = '6bad37cb514f62bb1fd7f852e7abac5409fb5423d73fd94eeccbc0a5efa751ae'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
