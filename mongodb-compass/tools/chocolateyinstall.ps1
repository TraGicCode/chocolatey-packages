$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.46.8/mongodb-compass-1.46.8-win32-x64.msi'
$checksum64 = 'ab63ae1acad832487d62c03bb25d8447efca7f96dcc60a5dfa0d4e661a35d3e4'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
