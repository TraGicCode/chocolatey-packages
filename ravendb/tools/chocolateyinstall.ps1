$ErrorActionPreference = 'Stop'

$url64bit   = 'https://hibernatingrhinos.com/downloads/RavenDB%20for%20Windows%20x64/50009'
$checksum64 = '216ed0e9d5e3760cef9952e7a8b9b2fc280977cc3c9cd748ce560366a6af30a1'

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
