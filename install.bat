REM Simplify setup so you don't accidentily overwrite change you may
REM have made to your local copy

set argC=0
for %%x in (%*) do Set /A argC+=1

echo %argC%

IF NOT %argC% == 2 GOTO ERR

set dest=%1
set wsName=%2

echo "Beginning copy"
mkdir %dest%
xcopy *.ahk %dest%

mkdir %dest%\%wsName%
xcopy workstation\*.ahk %dest%\%wsName%

pause
exit


:ERR
echo "Incorrect command format"
echo "install.bat [fullDestPath] [workstationName]"
pause
exit
