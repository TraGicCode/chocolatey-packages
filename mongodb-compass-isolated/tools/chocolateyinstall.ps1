$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.29.5/mongodb-compass-isolated-1.29.5-win32-x64.msi'
$checksum64 = 'ea9fd680a9ac19c4c38b40f7acc945770e0fd0f56797b4c90291efab6afb7dfe'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
