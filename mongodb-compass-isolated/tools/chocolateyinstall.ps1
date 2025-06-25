$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.4/mongodb-compass-isolated-1.46.4-win32-x64.msi'
$checksum64 = '1a01c65c02ce1913919b6d9054bc0bff9b4b94896de6a70402197838dd1b6e26'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
