$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.3/mongodb-compass-1.32.3-win32-x64.msi'
$checksum64 = '4969168af09aef9a99c6cf9de95f7a0ac7bf8ac78eb2d87046c8b80463c99c7b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
