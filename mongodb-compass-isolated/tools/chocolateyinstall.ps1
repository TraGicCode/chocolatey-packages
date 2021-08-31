$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.28.4/mongodb-compass-isolated-1.28.4-win32-x64.msi'
$checksum64 = '0b1ca06394ee21723ca580ebc5b83a07b866db4f92dce8498a44c49428b39113'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
