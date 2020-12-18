$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.24.6/mongodb-compass-readonly-1.24.6-win32-x64.msi'
$checksum64 = '7d0324781a5dfc27521c6cc77377226adfe582f6f05c89969e2fb9e1a77b3162'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
