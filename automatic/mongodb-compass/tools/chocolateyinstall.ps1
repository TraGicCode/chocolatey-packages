$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.51.0/mongodb-compass-1.51.0-win32-x64.msi'
$checksum64 = 'EA98BE9E4F62087A53BC2C411EBC2594E238836C807A3A1F7C9D5C266E2407AC'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
