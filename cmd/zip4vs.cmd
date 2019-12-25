@echo off
echo Utilizing BandiZip commandline (BC)

if "%1"=="" goto L_syntax

bc a -ex:"packages;bin;obj;debug;release;testresults;.vs" %*
goto :EOF

:L_syntax
echo USAGE: %0 filename folder
goto :EOF
