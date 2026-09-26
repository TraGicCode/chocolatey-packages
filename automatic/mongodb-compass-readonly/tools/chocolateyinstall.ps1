$ErrorActionPreference = 'Stop'

$url64bit   = 'https://github.com/mongodb-js/compass/releases/download/v1.51.0/mongodb-compass-readonly-1.51.0-win32-x64.msi'
$checksum64 = '2905EBF8001DDBFE89F779E3078CA3DC8BD83E85F0C0DF1E36C9181189898FC9'


$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'MSI'
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
