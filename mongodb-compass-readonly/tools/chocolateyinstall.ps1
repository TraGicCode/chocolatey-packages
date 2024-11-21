$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.44.7/mongodb-compass-readonly-1.44.7-win32-x64.msi'
$checksum64 = '59f950ad00f2d11505536a06aa328f72a9b0a19fcd5755af6071deba04993b2b'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
