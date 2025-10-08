$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.47.1/mongodb-compass-isolated-1.47.1-win32-x64.msi'
$checksum64 = 'b8331d40ab770dddc28c9e7a53fcb51a54462936d434c88803b0088fc4b7d3bf'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
