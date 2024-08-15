# EERST INSTALLEREN
# WSL2
# Docker Desktop

$programids = @(
    "Google.Chrome",
    "7zip.7zip",
    "Dropbox.Dropbox",
    "Git.Git",
    "Microsoft.WindowsTerminal",
    "JanDeDobbeleer.OhMyPosh",
    "Microsoft.OneDrive",
    "Postman.Postman",
    "WinMerge.WinMerge",
    "WinSnap",
    "NickeManarin.ScreenToGif",
    "Github.cli",
    "DominikReichl.KeePass",
    "OBSProject.OBSStudio"
)
$programids | ForEach-Object -Process {
    # Start-Process -FilePath "winget" -ArgumentList "install $_" -Wait -NoNewWindow
    Start-Process -FilePath "winget" -ArgumentList "show $_" -Wait -NoNewWindow
}
