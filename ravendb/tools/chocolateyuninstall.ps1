Write-Output "Inside chocolateyUninstall"
$service = "RavenDB"
if (Get-Service $service -ErrorAction SilentlyContinue) {
    & sc.exe delete $service
}