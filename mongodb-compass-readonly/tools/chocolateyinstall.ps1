$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.28.1/mongodb-compass-readonly-1.28.1-win32-x64.msi'
$checksum64 = 'c84deaa0f996dbe86dec282c28ef373196d19c9d5e6667b16120848b3a0f1d6f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
