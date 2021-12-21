$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.29.6/mongodb-compass-isolated-1.29.6-win32-x64.msi'
$checksum64 = '4e9547b33ffe31221a893e55c4f61098f07260f2e139f8eb4720d8bf26980094'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
