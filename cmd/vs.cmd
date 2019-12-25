@echo off
setlocal
set DEVENV="C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\Common7\IDE\devenv.exe"
start "Start DEVENV" %DEVENV% %*
