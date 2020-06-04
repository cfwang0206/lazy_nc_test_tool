@echo off
 
title POSNAT TESTER - cfwang@HiLink
REM By cfwang 20200505

set mypath=%cd%\
set host=www.google.com
set Remote_port=80
set Local_port=4128

set /p loopcount=TRY %host% %Remote_port% times:
REM Check Network
ping -n 1 %host% | find "TTL=" >nul
if errorlevel 1 (
    echo host not reachable
    pause
    exit
) else (
    goto start
)

:start
echo.
echo  [%loopcount%] - %date% %time% - [%loopcount%]
echo local port %Local_port% TEST to - %host% %Remote_port%
call run.bat
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop
goto start

:exitloop
echo.
echo TEST %host% %port% DONE !
echo.
pause