# Printer-Job-Killer
Uses Powershell to kill print jobs.


# What does it do?
Its pretty simple actually, based on the `$Printer` variable, it will find all jobs for that printer and put them into the `$Jobs` variable.

For each job, it will then suspend the print job, then delete it (`Suspend-PrintJob`, and `Remove-PrintJob`) respectfully.

From there it simply writes the output to terminal.

# How to run?

Just doubleclick on `run.bat`. Thats it!