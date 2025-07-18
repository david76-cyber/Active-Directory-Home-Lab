# ----- Configurable Variables ----- #
$PASSWORD_FOR_USERS = "Password1"
$CSV_PATH = "C:\Users\Administrator\Desktop\users.csv"
$DOMAIN_DN = "DC=david,DC=com"   # Adjust this to match your domain

# Convert password to secure string
$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force

# Import CSV
if (-not (Test-Path $CSV_PATH)) {
    Write-Error "CSV file not found at $CSV_PATH"
    exit
}
$USER_FIRST_LAST_LIST = Import-Csv -Path $CSV_PATH

# ----- Create Users ----- #
foreach ($user in $USER_FIRST_LAST_LIST) {
    $first = $user.FirstName
    $last  = $user.LastName
    $username = $user.Username
    $ouName = $user.OU
    $department = $user.Department

    if (-not $username) {
        Write-Warning "Skipping user with missing username: $first $last"
        continue
    }

    $ouDN = "OU=$ouName,$DOMAIN_DN"

    # Create OU if it doesn't exist
    if (-not (Get-ADOrganizationalUnit -Filter "Name -eq '$ouName'" -ErrorAction SilentlyContinue)) {
        New-ADOrganizationalUnit -Name $ouName -Path $DOMAIN_DN -ProtectedFromAccidentalDeletion $false
        Write-Host "Created OU: $ouName" -ForegroundColor Green
    }

    # Skip if user exists
    if (Get-ADUser -Filter "SamAccountName -eq '$username'" -ErrorAction SilentlyContinue) {
        Write-Warning "User $username already exists. Skipping."
        continue
    }

    $displayName = "$first $last"
    $userPrincipalName = "$username@david.com"

    Write-Host "Creating user: $username in OU: $ouName" -ForegroundColor Cyan

    New-ADUser `
        -SamAccountName $username `
        -UserPrincipalName $userPrincipalName `
        -GivenName $first `
        -Surname $last `
        -DisplayName $displayName `
        -Name $displayName `
        -Department $department `
        -AccountPassword $password `
        -Path $ouDN `
        -PasswordNeverExpires $true `
        -Enabled $true
}
