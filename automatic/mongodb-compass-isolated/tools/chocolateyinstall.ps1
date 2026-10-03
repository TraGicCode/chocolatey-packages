$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.52.0/mongodb-compass-isolated-1.52.0-win32-x64.msi'
$checksum64 = '85CAE4529B610FD06D183B89B4ACFA34BDA6A4FEF5FECFF70E12493C96BE62FB'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
