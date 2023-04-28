$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.4/mongodb-compass-1.36.4-win32-x64.msi'
$checksum64 = 'b3ed3dd6186f50d99c95d8afede26affb095e3110405bf62c0e1b975e1c2c8fd'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
