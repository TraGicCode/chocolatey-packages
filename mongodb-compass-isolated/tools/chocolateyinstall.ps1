$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.23.0/mongodb-compass-isolated-1.23.0-win32-x64.msi'
$checksum64 = '888782104132e378ffad84b50dfbad952b0ab159919dbfd0d8656cc4fc40ea5c'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
