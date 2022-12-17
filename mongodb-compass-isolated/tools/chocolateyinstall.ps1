$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.34.2/mongodb-compass-isolated-1.34.2-win32-x64.msi'
$checksum64 = '55866847a1690e52103417ac59418aa1ca5d62ff67d23bf97b4d3e23e2ecbe08'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
