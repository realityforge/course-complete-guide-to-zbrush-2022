@echo off
SETLOCAL

rem Vendored assets from trainer

CALL :get_artifact vendor/Chapter10/Alien_Posed.ztl https://github.com/realityforge/course-complete-guide-to-zbrush-2022/releases/download/InitialVendor/Alien_Posed.ztl
CALL :get_artifact vendor/Chapter5/Diorama_001.ztl https://github.com/realityforge/course-complete-guide-to-zbrush-2022/releases/download/InitialVendor/Diorama_001.ztl

GOTO :exit

:get_artifact
set "local_file=%1"
set "url=%2"
if not exist "%local_file%" curl -L --output "%local_file%" "%url%"
if NOT ["%errorlevel%"]==["0"] (
    pause
    exit /b %errorlevel%
)
exit /b 0

:exit
exit /b
