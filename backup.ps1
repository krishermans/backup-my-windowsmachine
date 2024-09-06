# Run this as administrator/root

param (
    [string]$BackupRootFolder = "D:\\hppxl2024",
    [string]$HomeFolder = "Users\\Kris",
    [switch]$TestRun = $false,
    [switch]$Verbose = $false
)

# List of folders and files to backup
$backupItems = @(
    "$HomeFolder\.ssh",
    "$HomeFolder\Pictures",
    "$HomeFolder\AppData\Roaming\Code\User",
    "$HomeFolder\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState",
    "$HomeFolder\Desktop",
    "$HomeFolder\Documents",
    "$HomeFolder\.gitconfig",
    "Github",
    "dev",
    "devtest",
    "manifest",
    "manifest_backup",
    "student"
    # Add more items here as needed
)

# Common robocopy options
$robocopyOptions = "/MIR /b /mt /r:0 /w:0 /XF *.tmp"

# Adjust options if this is a test run
if ($TestRun) {
    $robocopyOptions += " /L"  # /L flag for listing files without copying
}

# Function to backup an individual item
function Backup-Item {
    param (
        [string]$Source,
        [string]$Destination
    )

    if ($Verbose) {
        Write-Host "Backing up $Source to $Destination"
    }

    Start-Process -FilePath "robocopy" -ArgumentList "$Source $Destination $robocopyOptions" -Wait -NoNewWindow
}

# Backup each item
foreach ($item in $backupItems) {
    $sourcePath = "C:\\$item"
    $destinationPath = "$BackupRootFolder\\$item"

    # Call the backup function
    Backup-Item -Source $sourcePath -Destination $destinationPath
}

# Summary log
if ($Verbose) {
    Write-Host "Backup process completed."
    if ($TestRun) {
        Write-Host "This was a test run. No files were copied."
    }
}

# End of script
