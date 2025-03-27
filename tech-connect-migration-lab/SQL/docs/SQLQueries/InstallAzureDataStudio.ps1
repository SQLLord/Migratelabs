# Define the URL for the latest Azure Data Studio installer
$url = "https://azuredatastudio-update.azurewebsites.net/latest/win32-x64/stable"

# Define the path of the directory you want to check
$directoryPath = "C:\\temp"

# Check if the directory exists
if (-not (Test-Path -Path $directoryPath)) {
    # Create the directory if it does not exist
    New-Item -Path $directoryPath -ItemType Directory
    Write-Host "The directory '$directoryPath' did not exist and has been created."
} 

# Define the destination path where the installer will be saved
$installerPath = "C:\\temp\\azuredatastudio.exe"

# Download the installer
Invoke-WebRequest -Uri $url -OutFile $installerPath

# Install Azure Data Studio
Start-Process -FilePath $installerPath -ArgumentList "/VERYSILENT /MERGETASKS=!runcode" -Wait

# Remove the installer after installation
Remove-Item -Path $installerPath

# Print a success message
Write-Host "Azure Data Studio has been installed successfully."
