$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.32.3/mongodb-compass-isolated-1.32.3-win32-x64.msi'
$checksum64 = 'b528de3bdc58ee1aa3197f615b41be1ad44be3953a9f6fa972a651b612eabc3f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
