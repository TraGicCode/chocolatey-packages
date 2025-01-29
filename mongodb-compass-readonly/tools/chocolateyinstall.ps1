$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.45.2/mongodb-compass-readonly-1.45.2-win32-x64.msi'
$checksum64 = '720ecf117c6bb27a7f59f845ea5cfde9f1377ff8cd227bca18922fe0bf448494'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
