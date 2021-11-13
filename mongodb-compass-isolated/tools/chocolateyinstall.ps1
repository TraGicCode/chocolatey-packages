$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.29.4/mongodb-compass-isolated-1.29.4-win32-x64.msi'
$checksum64 = 'a8971c26362ca850d82c2e4e0efd3c5a938ea390dc5e6ab789cc0d9037552580'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
