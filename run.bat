@echo off
REM 如果不要 DNS 解析，要把 -n 這段前的砍掉REM  ；然後把用不到的 REM 起來
REM %mypath%\nc64.exe -p %Local_port% -vv -w5 -n %host% %Remote_port%
%mypath%\nc64.exe -p %Local_port% -vv -w5 %host% %Remote_port%
REM 呼叫 cport 關掉 對 測試主機建的 TCP session
cports.exe /close * * %host% %Remote_port%