$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.3/mongodb-compass-readonly-1.44.3-win32-x64.msi'
$checksum64 = 'ac858405ca9ce519582396a5ccf42b6cf2695caed77af4fbbdb27e41493edf91'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
