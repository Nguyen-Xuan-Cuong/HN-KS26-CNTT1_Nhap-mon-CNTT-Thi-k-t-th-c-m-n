# Script: tong_hop.ps1
# Tac gia: Nguyễn Xuân Cường
# Ngay tao: 11/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > .\logs\tong_hop.txt
Get-Content  logs\rental.log | Select-String "status=404" >> .\logs\tong_hop.txt
Get-Content  logs\rental.log | Select-String "status=500" | Measure-Object -Line >> .\logs\tong_hop.txt
Write-Host "Hoan thanh!"
