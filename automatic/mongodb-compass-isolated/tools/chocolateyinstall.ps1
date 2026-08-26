$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.15/mongodb-compass-isolated-1.49.15-win32-x64.msi'
$checksum64 = 'EEA56F541F6027BAEF9AE592C1B95DD0C616265E65A3663C824EEF462CCD548C'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
