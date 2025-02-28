﻿$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.3/mongodb-compass-1.45.3-win32-x64.msi'
$checksum64 = 'c1752215171b797438b249bf33e559ad141c56a595ffd0a09c7b3a0d6e59cc6e'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
