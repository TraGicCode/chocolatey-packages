$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.2/mongodb-compass-isolated-1.32.2-win32-x64.msi'
$checksum64 = 'dbc1c073cd950774d34c42b19f1306c84566c6c5398b7e7bbde97ae2184f14fd'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
