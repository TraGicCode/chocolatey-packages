$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.10/mongodb-compass-isolated-1.49.10-win32-x64.msi'
$checksum64 = '7bef4a2fe8ecdd152168c58a92f45570272385c989390dc6de5cdeac8536e249'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
