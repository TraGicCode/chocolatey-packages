$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.49.5/mongodb-compass-readonly-1.49.5-win32-x64.msi'
$checksum64 = '5233c99a687a4d8b4c77bbe231c3a62c171c9ca230f814ee6c600c4f36e0d830'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
