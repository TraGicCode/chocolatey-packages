$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.3/mongodb-compass-readonly-1.42.3-win32-x64.msi'
$checksum64 = '915bc4f59f7893bed0565a2ba5c0ea078fc51301f46a3512a5f93ca6f65db1de'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
