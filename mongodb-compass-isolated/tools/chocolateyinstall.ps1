$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.42.2/mongodb-compass-isolated-1.42.2-win32-x64.msi'
$checksum64 = '10bea191b6d682af7c897bf2a90a76697b85a2c2e3fbebae33e8adb41bb286af'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
