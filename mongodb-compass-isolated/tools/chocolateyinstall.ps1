$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.0/mongodb-compass-isolated-1.49.0-win32-x64.msi'
$checksum64 = 'ac4aa0e075272323326f61d74b0b370b3f9b105bd42ab4244762225392c3316f'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
