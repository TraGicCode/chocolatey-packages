$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.31.3/mongodb-compass-readonly-1.31.3-win32-x64.msi'
$checksum64 = '27c9688cf790d0928d87a29d8f7301a90ae4c20df8f06456071627f6a5188588'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
