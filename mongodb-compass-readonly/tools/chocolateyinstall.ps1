$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.0/mongodb-compass-readonly-1.43.0-win32-x64.msi'
$checksum64 = 'db7264f0c1ef6db656d7e5fc50ab0357ceec6fbba0be23d4f20e5ea0b25e3105'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
