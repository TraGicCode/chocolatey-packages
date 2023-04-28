$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.4/mongodb-compass-isolated-1.36.4-win32-x64.msi'
$checksum64 = 'fbfbe45dddc19e8b06c76154d68a5f326cab0701b38bef5a42cbed87a5465cb0'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
