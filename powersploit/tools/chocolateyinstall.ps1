$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$moduleName = 'powersploit'  # this may be different from the package name and different case

if ($PSVersionTable.PSVersion.Major -lt 3) {
    throw "$moduleName) module requires a minimum of PowerShell v3."
}

# module may already be installed outside of Chocolatey
Remove-Module -Name $moduleName -Force -ErrorAction SilentlyContinue

$url64bit   = 'https://github.com/PowerShellMafia/PowerSploit/archive/v3.0.0.zip'
$checksum64 = 'D47F5A872B1F19434762C579FCC011C6D1FA2786615A0E89FEF451F52129E777'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = $toolsdir
}



Install-ChocolateyZipPackage @packageArgs
