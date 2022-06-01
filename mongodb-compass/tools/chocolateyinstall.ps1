$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.0/mongodb-compass-1.32.0-win32-x64.msi'
$checksum64 = '7b57f5380057817c2b97c4858ec4bac058bcf5372165fcc9bd6f6ea290431fbf'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
