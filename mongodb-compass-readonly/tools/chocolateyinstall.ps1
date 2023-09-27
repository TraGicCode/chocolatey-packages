$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.0/mongodb-compass-readonly-1.40.0-win32-x64.msi'
$checksum64 = '4accefcbd66d5fd8b0d70faffbb7860e7a9809e1978ca4cc28e21ed7e7a309f8'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
