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


    $htmlPage = Invoke-RestMethod -Method get -Uri "https://ravendb.net/downloads"
    $allReleases = [Regex]::Match($htmlPage, "var builds = (.*);").Captures.Groups[1].Value | ConvertFrom-Json
    $allOrderedStableWindowsReleases = $allReleases | Where-Object -FilterScript { $PSItem.Branch -eq 'Stable' -and $PSItem.Platform -eq 'WindowsX64' } | Sort-Object -Property PublishedAt -Descending
    $latest = @{
        Streams = [ordered] @{
        }
    }
    foreach($stableWindowsRelease in $allOrderedStableWindowsReleases) {
        $latest.Streams.Add($stableWindowsRelease,
            @{
                Version = $stableWindowsRelease.Version
                URL64   = ($stableWindowsRelease.Downloadables | Where-Object -FilterScript { $PSItem.Type -eq 'Package' }).DownloadUrl
            }
        )
    }

    $latest

}

Update-Package -ChecksumFor 64