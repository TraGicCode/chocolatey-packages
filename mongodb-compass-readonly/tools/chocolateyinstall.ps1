$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.0/mongodb-compass-readonly-1.36.0-win32-x64.msi'
$checksum64 = '8cff26cece6141d191498196e8679806db2607fa9ebd3cc3b9cbddef5a154188'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
