$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.5/mongodb-compass-1.43.5-win32-x64.msi'
$checksum64 = 'c73d52dee21034dcd3571790550a08ca9ad59a505f85be1f3842ce5e4e73fa41'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
