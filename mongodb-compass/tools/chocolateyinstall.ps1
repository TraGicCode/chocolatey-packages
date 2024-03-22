$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.3/mongodb-compass-1.42.3-win32-x64.msi'
$checksum64 = '686d34677bbdb077f673c164ab767ce1913baf5b9c9800bc0d3e84a58139481a'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
