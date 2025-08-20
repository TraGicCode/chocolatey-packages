$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.8/mongodb-compass-readonly-1.46.8-win32-x64.msi'
$checksum64 = '88e1fcd1a460ec214cd62a619caa121e62a61dd4d6f28055d93862bc2670837e'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
