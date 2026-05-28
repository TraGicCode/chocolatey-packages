$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.8/mongodb-compass-isolated-1.49.8-win32-x64.msi'
$checksum64 = '9005e1069708f8b757ff842c472bcb087096e80f0b10a2cc2e1b071f5ad66bac'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
