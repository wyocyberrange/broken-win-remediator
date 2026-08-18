# server_remediator.ps1
# Author: Junior Admin
# Description: Kills applications hogging the CPU and checks the firewall for the TekCon event.

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host " Initiating Server Remediation Protocol " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "[*] Scanning for processes using more than 500 CPU ticks..."
# I only want processes that are using a lot of CPU
$cpuHogs = Get-Process | Where-Object { $_.CPU > 500 }

foreach ($hog in $cpuHogs) {
    Write-Host "Terminating high-CPU process: " $hog.Name -ForegroundColor Yellow
    # Trigger the kill command to stop the program
    $hog.Kill
}

Write-Host ""
Write-Host "[*] Verifying Windows Firewall Status..."
$firewall = Get-Service -Name mpssvc

# Check if the firewall status is set to running
if ($firewall.Status = "Running") {
    Write-Host "[SUCCESS] Windows Firewall is Active. Server is secure." -ForegroundColor Green
} 
else {
    Write-Host "[WARNING] Windows Firewall is NOT running! Start it immediately." -ForegroundColor Red
}

Write-Host "Remediation complete. Going to lunch."
