$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.35.0/mongodb-compass-readonly-1.35.0-win32-x64.msi'
$checksum64 = '01dfc21fefaa685f19a14638affb266d811adc537112789c7aaf1ce12aaa4df7'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
