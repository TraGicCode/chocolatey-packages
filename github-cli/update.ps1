Import-Module AU


# Find and replace content basd on latest version found
function global:au_SearchReplace {
    @{
        '.\tools\chocolateyinstall.ps1' = @{
            "(^[$]url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

# Get latest version + download url of the software
function global:au_GetLatest {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $latest_release = Invoke-RestMethod -Method Get -Uri 'https://api.github.com/repos/cli/cli/releases/latest'
    $latest_release_zip = $latest_release.assets | Where-Object -FilterScript { $PSItem.browser_download_url -like "*amd64.zip" }
    @{
        Version = $latest_release.tag_name
        URL64   = $latest_release_zip.browser_download_url
    }

}

Update-Package -ChecksumFor 64