$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.25.0/mongodb-compass-isolated-1.25.0-win32-x64.msi'
$checksum64 = '87e91e517a923f9e9185daa4505f8a6c3b67ed35c8d56f4270a1e3f10f347c68'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
