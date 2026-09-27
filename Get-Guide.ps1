function Get-Guide {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$false)]
        [string]$Topic = "General"
    )

    Write-Host "===================================================" -ForegroundColor White
    Write-Host "                MICROSOFT POWERSHELL               " -ForegroundColor White
    Write-Host "===================================================" -ForegroundColor White

    switch ($Topic.ToLower()) {
        "all" {
            Write-Host "`n CORE FILE & DIRECTORY COMMAND:" -ForegroundColor White
            Write-Host "  - Set-Location : Changes the current working directory." -ForegroundColor White
            Write-Host "  - Get-ChildItem: Lists files and directories." -ForegroundColor White
            Write-Host "  - Get-Content  : Reads content from a text file." -ForegroundColor White
            Write-Host "  - Copy-Item    : Copies files or directories." -ForegroundColor White
            Write-Host "  - Remove-Item  : Deletes files or directories." -ForegroundColor White

            Write-Host "`n PROCESS MANAGEMENT COMMAND:" -ForegroundColor White
            Write-Host "  - Get-Process  : Lists all running processes." -ForegroundColor White
            Write-Host "  - Stop-Process : Terminates a running process." -ForegroundColor White
            Write-Host "  - Start-Process: Starts one or more processes." -ForegroundColor White

            Write-Host "`n SYSTEM SERVICES COMMAND:" -ForegroundColor White
            Write-Host "  - Get-Service  : Gets the status of Windows services." -ForegroundColor White
            Write-Host "  - Start-Service: Starts a stopped service." -ForegroundColor White
            Write-Host "  - Stop-Service : Stops a running service." -ForegroundColor White

            Write-Host "`n NETWORK & DIAGNOSTIC COMMAND:" -ForegroundColor White
            Write-Host "  - Test-Connection : Sends ICMP echo requests (like ping)." -ForegroundColor White
            Write-Host "  - Invoke-RestMethod : Sends HTTP/HTTPS requests (API interaction)." -ForegroundColor White
            Write-Host "  - Resolve-DnsName : Resolves domain names (like nslookup)." -ForegroundColor White
        }
        "basic" {
            Write-Host "`n CORE FILE & DIRECTORY COMMAND:" -ForegroundColor White
            Write-Host "  - Set-Location : Changes the current working directory." -ForegroundColor White
            Write-Host "  - Get-ChildItem: Lists files and directories." -ForegroundColor White
            Write-Host "  - Get-Content  : Reads content from a text file." -ForegroundColor White
            Write-Host "  - Copy-Item    : Copies files or directories." -ForegroundColor White
            Write-Host "  - Remove-Item  : Deletes files or directories." -ForegroundColor White
        }
        "process" {
            Write-Host "`n PROCESS MANAGEMENT COMMAND:" -ForegroundColor White
            Write-Host "  - Get-Process  : Lists all running processes." -ForegroundColor White
            Write-Host "  - Stop-Process : Terminates a running process." -ForegroundColor White
            Write-Host "  - Start-Process: Starts one or more processes." -ForegroundColor White
        }
        "service" {
            Write-Host "`n SYSTEM SERVICES COMMAND:" -ForegroundColor White
            Write-Host "  - Get-Service  : Gets the status of Windows services." -ForegroundColor White
            Write-Host "  - Start-Service: Starts a stopped service." -ForegroundColor White
            Write-Host "  - Stop-Service : Stops a running service." -ForegroundColor White
        }
        "network" {
            Write-Host "`n NETWORK & DIAGNOSTIC COMMAND:" -ForegroundColor White
            Write-Host "  - Test-Connection : Sends ICMP echo requests (like ping)." -ForegroundColor White
            Write-Host "  - Invoke-RestMethod : Sends HTTP/HTTPS requests (API interaction)." -ForegroundColor White
            Write-Host "  - Resolve-DnsName : Resolves domain names (like nslookup)." -ForegroundColor White
        }
        default {
            Write-Host "`n AVAILABLE TOPICS:" -ForegroundColor White
            Write-Host "  - Get-Guide -Topic All      (View all topics)" -ForegroundColor White
            Write-Host "  - Get-Guide -Topic Basic    (Core File Management)" -ForegroundColor White
            Write-Host "  - Get-Guide -Topic Process  (Process Control)" -ForegroundColor White
            Write-Host "  - Get-Guide -Topic Service  (Windows Services)" -ForegroundColor White
            Write-Host "  - Get-Guide -Topic Network  (Network Tools)" -ForegroundColor White
        }
    }
    Write-Host "---------------------------------------------------" -ForegroundColor White
}