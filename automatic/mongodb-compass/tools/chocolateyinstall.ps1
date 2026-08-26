$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.15/mongodb-compass-1.49.15-win32-x64.msi'
$checksum64 = 'B68CB55DE1A310A2A348A35DD6216D83C39DFAEF0BC4FB64038776682CF1ECC2'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
