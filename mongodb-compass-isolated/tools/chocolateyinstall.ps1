$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.2/mongodb-compass-isolated-1.49.2-win32-x64.msi'
$checksum64 = '422e5c152c86f6bcbda951a1939217d165bccb23beb202a8be5653f8a5c1ac8c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
