$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.24.1/mongodb-compass-1.24.1-win32-x64.msi'
$checksum64 = 'dc86d09ba8bec701d510a3806753cbedbbc3dc3cef7a0fc9aa07b27f822619cc'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
