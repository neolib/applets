@echo off
cd /d "%TMP%"
if errorlevel 1 goto L_error

dir
rd /s/q .
dir
timeout 5
goto :EOF

:L_error
echo Cannot CD into TMP directory (%TMP%)!
pause
goto :EOF
