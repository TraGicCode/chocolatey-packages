$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.2/mongodb-compass-readonly-1.40.2-win32-x64.msi'
$checksum64 = '15bd5e61c00ccadcd3085eb0909264d4f3745c2bfe071dd8e82623ae62b88dc3'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
