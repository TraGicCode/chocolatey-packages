$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.48.0/mongodb-compass-1.48.0-win32-x64.msi'
$checksum64 = 'a2ca8c4e980bd5e2058da0c22ea63abaf47d3e5cf38e8f3be56bcc40ecb944b5'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
