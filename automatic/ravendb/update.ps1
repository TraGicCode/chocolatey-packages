Import-Module Chocolatey-AU

function Get-RavenDBReleases {
    $html = Invoke-RestMethod "https://ravendb.net/download"

    $downloads = [regex]::Matches($html, 'self\.__next_f\.push\(\[1,\s*("(?:\\.|[^"\\])*")\]\)') |
    ForEach-Object {
        $chunk = ConvertFrom-Json $_.Groups[1].Value

        $row = $chunk -split "`n" |
        Where-Object { $_ -match '^\d+:\{"downloadsInfo":' } |
        Select-Object -First 1

        if ($row) {
            ConvertFrom-Json ($row -replace '^\d+:', '')
        }
    } |
    Where-Object { $_.downloadsInfo } |
    Select-Object -First 1

    return $downloads.downloadsInfo.ravenDbBuilds
}

# Find and replace content basd on latest version found
function global:au_SearchReplace {
    @{
        '.\tools\chocolateyinstall.ps1' = @{
            "(^[$]url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_BeforeUpdate {
    Get-RemoteFiles -Purge -FileNameBase "RavenDB-$($Latest.Version)-windows-x64" -NoSuffix
}

# Get latest version + download url of the software
function global:au_GetLatest {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    
    $allReleases = Get-RavenDBReleases
    $allOrderedStableWindowsReleases = $allReleases | Where-Object -FilterScript { $PSItem.Branch -eq 'Stable' -and $PSItem.Platform -eq 'WindowsX64' } | Sort-Object -Property PublishedAt -Descending
    foreach ($stableWindowsRelease in $allOrderedStableWindowsReleases) {
        $stableWindowsRelease | Add-Member -NotePropertyName StreamVersion -NotePropertyValue (Get-Version -Version $stableWindowsRelease.Version).ToString(3)
    }
    $uniqueLatestStableWindowsReleases = $allOrderedStableWindowsReleases | Group-Object -Property StreamVersion
    $latest = @{
        Streams = [ordered] @{
        }
    }
    foreach ($stableWindowsRelease in $uniqueLatestStableWindowsReleases) {
        $latest.Streams.Add($stableWindowsRelease.Group[0].StreamVersion,
            @{
                Version  = $stableWindowsRelease.Group[0].Version
                URL64    = ($stableWindowsRelease.Group[0].Downloadables | Where-Object -FilterScript { $PSItem.Type -eq 'Package' }).DownloadUrl
                FileType = 'zip'
            }
        )
    }

    $latest
}

Update-Package -ChecksumFor 64