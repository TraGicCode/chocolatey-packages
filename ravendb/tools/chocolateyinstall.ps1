$ErrorActionPreference = 'Stop'

$url64bit   = 'https://hibernatingrhinos.com/downloads/RavenDB%20for%20Windows%20x64/50019'
$checksum64 = 'c03bd04bb85ac9badb8128b2d7b14187344249afdfbf4cc43c3141fdfab00063'

# Customization
$service = "RavenDB"

$packageParameters = Get-PackageParameters

# Parameter Defaults
if ($null -eq $packageParameters['install-path']) {
  $packageParameters['install-path'] = "$env:SystemDrive\RavenDB"
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
