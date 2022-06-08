$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.2/mongodb-compass-readonly-1.32.2-win32-x64.msi'
$checksum64 = '5ba579eb82574536b4a8326122c0de81673c9e78f602d2b9edded9f8a755c333'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
