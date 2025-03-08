$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.4/mongodb-compass-1.45.4-win32-x64.msi'
$checksum64 = 'fa8d42b08f1599c9f0fbe29247bb8aade8ee206deba20ee4d330fffa8fdbdc44'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
