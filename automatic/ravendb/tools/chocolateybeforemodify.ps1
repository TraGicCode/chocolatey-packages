$service = 'RavenDB'
if (Get-Service $service -ErrorAction SilentlyContinue) {
  $running = Get-Service $service
  if ($running.Status -eq "Running") {
    Stop-Service $service
  }
}