Import-Module ActiveDirectory

$csvPath = "C:\Users\Administrator\Desktop\delete_users.csv"
$usersToDelete = Import-Csv -Path $csvPath

foreach ($user in $usersToDelete) {
    $username = $user.Username

    if (-not $username) {
        Write-Warning "Missing username in CSV row. Skipping."
        continue
    }

    $adUser = Get-ADUser -Filter "SamAccountName -eq '$username'" -ErrorAction SilentlyContinue

    if ($adUser) {
        Remove-ADUser -Identity $adUser -Confirm:$false
        Write-Host "Deleted user: $username" -ForegroundColor Green
    } else {
        Write-Warning "User $username not found."
    }
}
