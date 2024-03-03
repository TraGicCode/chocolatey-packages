$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.2/mongodb-compass-readonly-1.42.2-win32-x64.msi'
$checksum64 = 'aff746240fbb3e5b4f89b29d5de3d7fe45706b93d9509644c63b78552f96fde9'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
