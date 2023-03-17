$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.1/mongodb-compass-1.36.1-win32-x64.msi'
$checksum64 = 'f641d04d21808bad61cd38ffdf1f8e304932aeff4bdcdb4d12fe3a687baf1406'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
