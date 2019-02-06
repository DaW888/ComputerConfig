@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

rem set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
rem set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
rem echo datestamp: "%datestamp%"
rem echo timestamp: "%timestamp%"
rem echo fullstamp: "%fullstamp%"

echo %DD%
SET /A a = %DD% %% 2
echo %a%
if %a% == 0 noipy -u daw888 -p DawidWajda8*8 -n dawid888.ddns.net --provider noip
rem https://github.com/pv8/noipy
