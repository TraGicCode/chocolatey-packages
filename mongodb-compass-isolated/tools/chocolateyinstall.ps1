$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.3/mongodb-compass-isolated-1.42.3-win32-x64.msi'
$checksum64 = 'dbd4ae1905cd47523c48d72970ceb03c7a505e8d2d8e5133e4be7d3c7e2caf00'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
