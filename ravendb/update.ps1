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
    $latest_release = Invoke-RestMethod -Method Get -Uri 'https://api.github.com/repos/Particular/ServiceControl/releases/latest'

    @{
        Version = $latest_release.tag_name
        URL64   = $latest_release.assets.browser_download_url
    }

    $htmlPage = Invoke-RestMethod -Method get -Uri "https://ravendb.net/downloads"
    [Regex]::Match($htmlPage, "var builds = (.*);").Captures.Groups[1].Value | ConvertFrom-Json

}

Update-Package -ChecksumFor 64