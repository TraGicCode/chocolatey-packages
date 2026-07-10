$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.11/mongodb-compass-readonly-1.49.11-win32-x64.msi'
$checksum64 = 'ef0b0505beb3cb0eb20a928b1b3fdb5670afe8cb9615bc5ef0eb649457cac6e8'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
