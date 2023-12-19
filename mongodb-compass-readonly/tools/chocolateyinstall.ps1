$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.41.0/mongodb-compass-readonly-1.41.0-win32-x64.msi'
$checksum64 = '9127e5cabc840e1304bbb3781737614b3d030350e45659b6d6890e9f32782dd7'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
