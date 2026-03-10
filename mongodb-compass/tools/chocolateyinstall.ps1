$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.3/mongodb-compass-1.49.3-win32-x64.msi'
$checksum64 = 'b4a2af4d38e9beaf3cbbfd76f18f05e1bc6ec2fba51d9f5d5f966226f172669b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
