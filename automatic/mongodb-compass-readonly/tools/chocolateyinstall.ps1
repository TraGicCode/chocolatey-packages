$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.53.3/mongodb-compass-readonly-1.53.3-win32-x64.msi'
$checksum64 = '307816ffb0bf3a31c3b244759eb9a71a5e3d7be89318ed183b09bc9389d3faa6'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
