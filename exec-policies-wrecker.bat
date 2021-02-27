@Echo off
ping 127.0.0.1 -n 2 -w 500  > nul
powershell.exe -executionpolicy bypass -windowstyle hidden -noninteractive -nologo -file wp-changer.ps1