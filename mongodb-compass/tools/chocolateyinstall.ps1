$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.39.1/mongodb-compass-1.39.1-win32-x64.msi'
$checksum64 = 'e5b72528cdab81cf5c70e1c1124ac6434f3a61e388dfec64f37c57f984d57f6f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
