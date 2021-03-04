$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.26.0/mongodb-compass-isolated-1.26.0-win32-x64.msi'
$checksum64 = '8db6f974a4b5bde27ea47d05a26f8b744969d86426b9ffdd8d4fd3ff8c7b19ab'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
