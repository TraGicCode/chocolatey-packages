$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.40.0/mongodb-compass-isolated-1.40.0-win32-x64.msi'
$checksum64 = 'ebfb84c8513a9d4a59a7b8b8db299fdfa23af7b77490773da25f660ea38df1b7'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
