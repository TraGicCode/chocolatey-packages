﻿$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.27.1/mongodb-compass-isolated-1.27.1-win32-x64.msi'
$checksum64 = '60b8807625b0e6b32ffabab764b10f3f61bec6fbc0e9f79ef920451fc0dedb63'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
