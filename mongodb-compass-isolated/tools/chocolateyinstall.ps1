$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.0/mongodb-compass-isolated-1.44.0-win32-x64.msi'
$checksum64 = 'c5ea8e12d13d88c55c91ac8d06930398a44fb4bb7a1db41f4f6c0176924a8020'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
