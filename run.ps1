# Get the current user's desktop path
$desktopPath = [Environment]::GetFolderPath("Desktop")

# Define the folder name
$folderName = "Fuck you"

# Combine the desktop path and folder name
$folderPath = Join-Path -Path $desktopPath -ChildPath $folderName

# Check if the folder already exists
if (-Not (Test-Path -Path $folderPath)) {
    # Create the folder
    New-Item -Path $folderPath -ItemType Directory | Out-Null
    Write-Output "Folder '$folderName' created successfully on the desktop."
} else {
    Write-Output "The folder '$folderName' already exists on the desktop."
}
