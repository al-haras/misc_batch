@ECHO off

:: Copy Delta Sync .xmls and .ps1 script to C:\temp
xcopy %~dp0deltasync* C:\temp /q

:: shtasks to Trigger Delta Sync on Event ID 4720 = New AD User
schtasks /create /TN "DeltaSyncOnNewADUser" /xml "C:\temp\DeltaSyncOnNewADUser.xml" /RU "system"

:: shtasks to Trigger Delta Sync on Event ID 4724 = User Password Change
schtasks /create /TN "DeltaSyncOnPassChange" /xml "C:\temp\DeltaSyncOnPasswordReset.xml" /RU "system"