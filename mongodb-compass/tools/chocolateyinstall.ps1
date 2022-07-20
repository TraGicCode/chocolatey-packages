$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.4/mongodb-compass-1.32.4-win32-x64.msi'
$checksum64 = 'ed7fb20739c34f5e8f82f3ee2b6721d1cfdc795504c25b831c2248fc31d6e8e9'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
