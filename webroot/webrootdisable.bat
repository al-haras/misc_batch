@ ECHO off

::Stop/Disable Webroot DNS Service
sc stop DnsProxyAgent
sc config DnsProxyAgent start= disabled

::Gather "Connected" Interface Variable as %%B (stored as INTERFACE)
FOR /F "tokens=3,*" %%A IN ('netsh interface show interface^|find "Connected"') DO SET INTERFACE="%%B"

::Set DNS as Obtain Automatically to the "Connected" Interface(s) 
netsh interface ip SET dns %INTERFACE% dhcp
ipconfig /flushdns