$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.35.0/mongodb-compass-1.35.0-win32-x64.msi'
$checksum64 = 'df1665db4e030b372efeb6aa5fef0c7fc65c4bf70f31f31f2516871e1232de17'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
