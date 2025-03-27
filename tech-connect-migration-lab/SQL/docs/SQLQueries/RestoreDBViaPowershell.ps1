
# Define the URL of the file to be downloaded
$url = "https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2019.bak"

# Define the destination path where the file will be saved
$destinationPath = "C:\\Program Files\\Microsoft SQL Server\\MSSQL15.MSSQLSERVER\\MSSQL\\Backup\\AdventureWorks2019.bak"

# Use Invoke-WebRequest to download the file
Invoke-WebRequest -Uri $url -OutFile $destinationPath

# Print a success message
Write-Host "File downloaded successfully to $destinationPath"

#restore database

# Define the SQL Server instance and database
$serverInstance = "techconnectwin2"
$database = "master"

# Define the PowerShell variable containing the SQL command
$restorecmd = "USE [master]
RESTORE DATABASE [AdventureWorks2019_xxx] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\AdventureWorks2019.bak' WITH  FILE = 1,  MOVE N'AdventureWorks2019' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorks2019.mdf',  MOVE N'AdventureWorks2019_log' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorks2019_log.ldf',  NOUNLOAD,  STATS = 5"



# Use Invoke-Sqlcmd to execute the command
Invoke-Sqlcmd -ServerInstance $serverInstance -Database $database -Query $restorecmd

# Print a success message
Write-Host "Command executed successfully"



