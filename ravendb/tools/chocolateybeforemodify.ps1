# https://chocolatey.org/docs/getting-started
#
# Get-Service statping -ea 0 | Stop-Service
#
#
# Include powershell helper file with package https://chocolatey.org/packages/nginx
#
Write-Output "Inside BeforeModify"
$service = 'RavenDB'
if (Get-Service $service -ErrorAction SilentlyContinue) {
  $running = Get-Service $service
  if ($running.Status -eq "Running") {
    Stop-Service $service
  }
}