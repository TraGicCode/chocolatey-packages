$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.6/mongodb-compass-isolated-1.49.6-win32-x64.msi'
$checksum64 = '79bc03426a3ec73d8103bcc4e7e3968e1da3ed2a0eb6eeef70ca0a487183fbd3'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
