$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.22.1/mongodb-compass-isolated-1.22.1-win32-x64.msi'
$checksum64 = 'da3f92e87f611fca27310e6f6e33feed5863663a8b965027bdbc524b6e3ddf79'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
