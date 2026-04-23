$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.5/mongodb-compass-isolated-1.49.5-win32-x64.msi'
$checksum64 = 'd1af9a5759471b03e3aadafdbb156084253efc9c3012ba168f52e50ed3f66630'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
