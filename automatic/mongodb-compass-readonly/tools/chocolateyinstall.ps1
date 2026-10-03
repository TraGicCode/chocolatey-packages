$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.52.0/mongodb-compass-readonly-1.52.0-win32-x64.msi'
$checksum64 = '3FAD676F8494D349E821259DC9148069F564A20DE69DD366504FB05B008C55A5'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
