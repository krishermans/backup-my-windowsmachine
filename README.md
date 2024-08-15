# Backup My Windows Machine
scripts and notes to copy and restore important data from my work laptop.

## Backup.ps1
The PowerShell script provided can be used in several different ways depending on your needs. Below are examples of how you might run the script with different parameters.

### 1. Basic Usage
If you want to run the script with the default settings, simply execute it without any additional parameters:

```powershell
.\BackupScript.ps1
```

This command will back up the folders and files specified in the `$backupItems` array to the destination specified in the `$BackupRootFolder` parameter (default is "D:\\hppxl"). It will run with the normal robocopy options specified in the script.

### 2. Running a Test/Dry Run
If you want to perform a test run to see what the script would do without actually copying any files, use the `-TestRun` switch:

```powershell
.\BackupScript.ps1 -TestRun
```

In this mode, robocopy will only list the files that would be copied, deleted, or changed, without making any actual modifications. This is useful for verifying that your backup configuration is correct.

### 3. Verbose Output
If you want to see detailed output about what the script is doing, you can use the `-Verbose` switch:

```powershell
.\BackupScript.ps1 -Verbose
```

This will provide more information in the console about each operation, such as which files are being backed up.

### 4. Combining Parameters
You can combine the `-TestRun` and `-Verbose` switches to perform a dry run with detailed output:

```powershell
.\BackupScript.ps1 -TestRun -Verbose
```

This will allow you to thoroughly check what the script would do without actually copying any files.

### 5. Changing Backup Destination
If you want to change the backup destination folder, you can specify a different path using the `-BackupRootFolder` parameter:

```powershell
.\BackupScript.ps1 -BackupRootFolder "E:\\MyBackup"
```

This will back up the specified files and folders to E:\MyBackup instead of the default location (D:\hppxl).

### 6. Specifying a Different Home Folder
If the home folder is different from the default (Users\Kris), you can change it using the `-HomeFolder` parameter:

```powershell
.\BackupScript.ps1 -HomeFolder "Users\JohnDoe"
```

This will adjust the paths accordingly and back up files from the Users\JohnDoe directory.

### 7. Full Example with All Parameters
Here’s how you might use all the parameters together for a detailed dry run with a different backup destination:

```powershell
.\BackupScript.ps1 -BackupRootFolder "E:\\MyBackup" -HomeFolder "Users\JohnDoe" -TestRun -Verbose
```

This command would simulate the backup of JohnDoe's files to E:\MyBackup, with detailed output and without actually copying any files.

### Additional Notes
- Running as Administrator: If your script requires elevated privileges (e.g., for accessing certain protected files), make sure to run your PowerShell session as Administrator.
- Customizing Backup Items: You can modify the `$backupItems` array inside the script to include or exclude specific files and folders as needed.
By adjusting these parameters, you can tailor the script to meet various backup scenarios without modifying the core script logic.

## Software

### WSL 2
To install WSL 2, you can follow the official Microsoft documentation [here](https://learn.microsoft.com/en-us/windows/wsl/install). This guide provides step-by-step instructions on how to enable WSL 2 on your Windows machine.

Once you have installed WSL 2, you can use it to run Linux distributions natively on your Windows system. This allows you to take advantage of the benefits of both Windows and Linux environments.

### Docker Desktop
Docker Desktop is a powerful tool for building, testing, and deploying applications using containers. To install Docker Desktop, you can follow the official Docker documentation [here](https://www.docker.com/products/docker-desktop).

Docker Desktop provides an easy-to-use interface for managing containers and images, and it integrates seamlessly with WSL 2. By combining Docker Desktop with WSL 2, you can create a powerful development environment for building and running containerized applications.

Remember to check the system requirements and follow the installation instructions provided in the documentation for both WSL 2 and Docker Desktop.

### Windows Terminal
This should be already installed, but its config can be found in:

```
$HomeFolder\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

I like the Catpuccin themes, and use fonts:
- Inconsolata NF
- Consolas

Look at [Nerd Fonts](https://www.nerdfonts.com/font-downloads) for more fonts.

### Google Chrome
To install Google Chrome using the Windows Package Manager (winget), you can run the following command in your command prompt or PowerShell:

```shell
winget install -e --id Google.Chrome
```
### 7-Zip
To install 7-Zip using the Windows Package Manager (winget), you can run the following command in your command prompt or PowerShell:

```shell
winget install -e --id 7zip.7zip
```

7-Zip is a free and open-source file archiver utility that supports a wide range of compression formats. It provides a user-friendly interface for creating and extracting compressed files, making it a popular choice for managing archives.

### Dropbox
To install Dropbox using the Windows Package Manager (winget), you can run the following command in your command prompt or PowerShell:

```shell
winget install -e --id Dropbox.Dropbox
```

Dropbox is a cloud storage service that allows you to store and sync your files across multiple devices. It provides a convenient way to access your files from anywhere and share them with others. By installing Dropbox on your Windows machine, you can easily back up and synchronize your important files and folders.

### Oh My Posh
To install Oh My Posh using the Windows Package Manager (winget), you can run the following command in your command prompt or PowerShell:

```shell
winget install -e --id JanDeDobbeleer.OhMyPosh
```

Oh My Posh is a theme engine for PowerShell that provides a customizable prompt with various themes and icons. It allows you to enhance your PowerShell experience by adding visual elements to your prompt, making it more informative and visually appealing.

Note: on my windows machine using Powershell, your configuration is saved to `$PROFILE`, which
in my case points to: 

```
C:\Users\kris\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```






