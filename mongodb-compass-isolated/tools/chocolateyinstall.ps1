$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.48.2/mongodb-compass-isolated-1.48.2-win32-x64.msi'
$checksum64 = 'f8ab7c3ae49a8ad3795832a1caa3e4f9358f0c2737944a2ecac0f874ce902317'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
