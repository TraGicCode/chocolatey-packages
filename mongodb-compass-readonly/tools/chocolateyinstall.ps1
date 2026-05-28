$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.8/mongodb-compass-readonly-1.49.8-win32-x64.msi'
$checksum64 = '0df3e18aaa4ac6f04b7cf24449400d45c4929c2c84698b57d6981f4e75d26fc9'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
