$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.8/mongodb-compass-isolated-1.46.8-win32-x64.msi'
$checksum64 = 'b20a36a44baf1ab92b15ed868366fbc99552319bebf3d3c8eb03cb82057ce5de'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
