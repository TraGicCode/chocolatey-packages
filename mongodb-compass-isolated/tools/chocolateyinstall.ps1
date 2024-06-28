$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.3/mongodb-compass-isolated-1.43.3-win32-x64.msi'
$checksum64 = 'c37a08f553e1733f39ca5b86c0568e91f4466570f47c86212649ff382be61ef5'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
