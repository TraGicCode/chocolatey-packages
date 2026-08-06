$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.12/mongodb-compass-isolated-1.49.12-win32-x64.msi'
$checksum64 = 'bd1c773c2ffa19aea6d0bf5acc6ecba54a3b390ef12bd2e08c5ae859e5b89ed2'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
