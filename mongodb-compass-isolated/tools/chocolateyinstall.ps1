$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.1/mongodb-compass-isolated-1.45.1-win32-x64.msi'
$checksum64 = 'cb2f465649dbcf97fc0f4ebe1dd61b6221279f1914375d0bc2f2d0f2c1365527'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
