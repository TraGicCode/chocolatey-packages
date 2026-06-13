$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.9/mongodb-compass-isolated-1.49.9-win32-x64.msi'
$checksum64 = '2a15bdb31e3ed8a183b7a1807c603be6599eef64c0dbe46cc75afa6e4569ded3'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
