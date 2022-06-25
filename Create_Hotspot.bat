@echo off
title HOSTPOT
echo ================================================================================
echo 1.                            Start Hostpot
echo 2.                            Stop  Hostpot
echo ================================================================================
choice /c:12 /n /t 10 /d 2 /m "Enter Your Choice[12]..."
if errorlevel 2 goto stop
if errorlevel 1 goto start

:stop
netsh wlan stop hostednetwork
exit

:start
set /p pass=set password >= 8 letters : 
netsh wlan set hostednetwork mode=allow ssid=MineWifi key=%pass%
netsh wlan start hostednetwork
echo MineWifi password is %pass%
pause
