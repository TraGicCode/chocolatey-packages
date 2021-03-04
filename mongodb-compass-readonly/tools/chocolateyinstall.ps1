$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.26.0/mongodb-compass-readonly-1.26.0-win32-x64.msi'
$checksum64 = '6ab4abb5562a15459f8d938865ee933f7e0b6e5489f9b48801112cabf239f755'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
