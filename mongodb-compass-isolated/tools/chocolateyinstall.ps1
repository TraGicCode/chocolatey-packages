$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.4/mongodb-compass-isolated-1.43.4-win32-x64.msi'
$checksum64 = '8d95b9ac41f3f4750e6e759d7b43202b79d3fce5647b49d72c247bdf0b86fb68'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
