$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.6/mongodb-compass-readonly-1.43.6-win32-x64.msi'
$checksum64 = '4b5a50da5513cd655d19204bd430d375fa80984033c8f790b0a13bd969cf8945'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
