$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.43.3/mongodb-compass-readonly-1.43.3-win32-x64.msi'
$checksum64 = 'c4f916a59e53797182eb1f56866118f36883b2b94c92e67ed8ae28d89bc87df6'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
