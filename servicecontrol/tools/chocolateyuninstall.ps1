
$ErrorActionPreference = 'Stop'

# Shortcuts to remove
@(
  [System.Environment]::GetFolderPath('CommonDesktopDirectory')
  [System.Environment]::GetFolderPath('CommonStartMenu')
) | ForEach-Object {
  if (Test-Path "$_\ServiceControl.lnk") { Remove-Item "$_\ServiceControl.lnk" }
}