$Printer = "EPSON TM-T88VII Receipt"
$Jobs = Get-PrintJob -PrinterName $Printer

foreach ($Job in $Jobs) {
    Suspend-PrintJob -PrinterName $Printer -ID $Job.Id
    Remove-PrintJob -PrinterName $Printer -ID $Job.Id
    Write-Output "Cleared Job: $Job"
}
