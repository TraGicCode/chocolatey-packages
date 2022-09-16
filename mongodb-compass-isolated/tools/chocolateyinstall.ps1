$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.33.1/mongodb-compass-isolated-1.33.1-win32-x64.msi'
$checksum64 = '8bab9ff9748cd3ec522aeb2c229d5d089ae4556218e1063d7986f9b4c16e3289'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
