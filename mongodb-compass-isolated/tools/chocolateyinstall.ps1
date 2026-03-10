$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.3/mongodb-compass-isolated-1.49.3-win32-x64.msi'
$checksum64 = '4e120ac7be2e3f407939d6dc7142c69695b2c30129dc0e46658bd4d7e30fdd76'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
