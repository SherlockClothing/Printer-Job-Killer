$Printer = "EPSON TM-T88VII Receipt"

Write-Output "Looking for print jobs..."
$Jobs = Get-PrintJob -PrinterName $Printer

Write-Output "Clearing found print jobs..."
foreach ($Job in $Jobs) {
    Suspend-PrintJob -PrinterName $Printer -ID $Job.Id
    Remove-PrintJob -PrinterName $Printer -ID $Job.Id
    Write-Output "Cleared Job: $Job"
}

Write-Output "Finished."