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
    $response = Invoke-RestMethod -Method Get -Uri "https://downloads.mongodb.org/tools/db/release.json"
    $windows_zip_archive = $response.versions.downloads.Where({ $PSItem.name -like 'windows'}).archive.url

    @{
        Version = $response.versions.version
        URL64   = $windows_zip_archive
    }

}

Update-Package -ChecksumFor 64