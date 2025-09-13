$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.10/mongodb-compass-isolated-1.46.10-win32-x64.msi'
$checksum64 = '5b645bb095857c4804ffa1f06e97463e93ecc056e5f46f3d51515a1fae76a86a'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
