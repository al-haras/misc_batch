@echo off
:: Delete Scheduled Task DeltaSyncOnNewADUser
schtasks /delete /TN "DeltaSyncOnNewADUser" /f

:: Delete Scheduled Task DeltaSyncOnPassChange
schtasks /delete /TN "DeltaSyncOnPassChange" /f

:: Delete .ps1 and .xml files in C:\temp
del C:\temp\deltasync*
