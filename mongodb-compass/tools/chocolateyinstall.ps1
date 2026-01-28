$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.1/mongodb-compass-1.49.1-win32-x64.msi'
$checksum64 = '5f233d2e89a9c57a86c98cad5c03c48dae85d969d340af2ab8bc3fe40cdeeb8c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
