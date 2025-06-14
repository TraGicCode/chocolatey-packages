$ErrorActionPreference = 'Stop'

$url64bit      = 'https://github.com/Particular/ServiceControl/releases/download/6.6.4/Particular.ServiceControl-6.6.4.exe'
$checksum64    = '3c7fe099b669a72fdbb2d86e1946bc7daf2db5a0e543cf7aa15c6d074aac4987'
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pp = Get-PackageParameters

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url64bit       = $url64bit
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  fileFullPath   = "$toolsDir\Particular.ServiceControl.exe"
}

Get-ChocolateyWebFile @packageArgs

if (!$pp.NoDesktop) {
  Write-Host "Creating desktop shortcut for ServiceControl..."
  # Create desktop shortcut
  $desktop = [System.Environment]::GetFolderPath('CommonDesktopDirectory')
  Install-ChocolateyShortcut -ShortcutFilePath "$desktop\ServiceControl Management.lnk" -TargetPath $packageArgs.fileFullPath
}

if (!$pp.NoStartMenu) {
  Write-Host "Creating Start Menu shortcut for ServiceControl..."
  $startMenu = [System.Environment]::GetFolderPath('CommonStartMenu')
  Install-ChocolateyShortcut -ShortcutFilePath "$startMenu\ServiceControl Management.lnk" -TargetPath $packageArgs.fileFullPath
}
