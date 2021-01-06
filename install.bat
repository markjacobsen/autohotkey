REM Simplify setup so you don't accidentily overwrite change you may
REM have made to your local copy.
REM From a command prompt run: install.bat [fullDestPath] [workstationName]

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

echo "Copied to %wsName%"
pause
GOTO END


:ERR
echo "Incorrect command format"
echo "install.bat [fullDestPath] [workstationName]"
pause
exit

:END