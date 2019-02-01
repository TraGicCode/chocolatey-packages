$ErrorActionPreference = 'Stop'

$url64bit   = 'https://hibernatingrhinos.com/downloads/RavenDB for Windows x64/41008-Patch'
$checksum64 = '050CA55E992FD08569DA675D72E01CFB200C8DA410B31FE21FF8E49A0465F2DF'

# Customization
$service = "RavenDB"

$packageParameters = Get-PackageParameters

# Parameter Defaults
if ($null -eq $packageParameters['install-path']) {
  $packageParameters['install-path'] = "$env:SystemDrive\RavenDB"
}
if ($null -eq $packageParameters['data-path']) {
  $packageParameters['data-path'] = "$($packageParameters['install-path'])\Server\RavenData"
}

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $packageParameters['install-path']
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

if ($packageParameters['setup-as-service']) {
    Invoke-Expression -Command "$($packageParameters['install-path'])\Server\rvn.exe windows-service register --service-name $service"
    if ($packageParameters['start-service']) {
      Start-Service -Name RavenDB
    }
}