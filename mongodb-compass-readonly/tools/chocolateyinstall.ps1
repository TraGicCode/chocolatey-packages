$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.36.2/mongodb-compass-readonly-1.36.2-win32-x64.msi'
$checksum64 = '7ebfb52f773e0bad1dc315dfa60bf8083ec5ea96a7e2865a2e389d1760a7eb9a'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
