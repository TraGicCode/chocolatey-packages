$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.1/mongodb-compass-readonly-1.32.1-win32-x64.msi'
$checksum64 = 'f528081bd8f4dfa301070e6a2738a7131b36b72d37b6b31819aa804fe225d837'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
