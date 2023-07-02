$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.38.2/mongodb-compass-isolated-1.38.2-win32-x64.msi'
$checksum64 = '95248b0bbd8bd2db7656dda7b664a5c6ee440525062b7026953023bef9653415'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
