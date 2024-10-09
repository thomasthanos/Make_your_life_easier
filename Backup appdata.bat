:: ==================================================
::  Private Backup appdata
:: ==================================================
::  Dev  - Thomas
::  Help - ChatGPT
::  Link - https://github.com/thomasthanos/update_apps
::
::  changelog for v1.1: -----
:: ==================================================


@echo off
set source="%AppData%"
REM Change the destination ↓↓↓↓↓↓↓↓↓↓↓↓
set destination="D:\2.format\Windows Start up\Roaming"
REM Delete all contents of the destination folder
rmdir /s /q %destination%

echo.
echo  [94;2m============       ///       ///[0m
echo  [94;2m    ///            ///       ///[0m
echo  [94;2m    ///            ///       ///[0m 
echo  [94;2m    ///            /// ///// ///[0m
echo  [94;2m    ///            ///       ///[0m  
echo  [94;2m    ///            ///       ///[0m
echo  [94;2m    ///            ///       ///[0m
echo.

for /l %%i in (5,-1,1) do (
    echo %%i
    timeout /t 1 >nul
)
color 6
cls
echo XEKINAO NA ANTIGRAFO!!
timeout /t 4 /nobreak >nul
cls
echo.
echo  [94;2m============       ///       ///[0m
echo  [94;2m    ///            ///       ///[0m
echo  [94;2m    ///            ///       ///[0m 
echo  [94;2m    ///            /// ///// ///[0m
echo  [94;2m    ///            ///       ///[0m  
echo  [94;2m    ///            ///       ///[0m
echo  [94;2m    ///            ///       ///[0m
echo.
timeout /t 4 /nobreak >nul
color 7
REM Copy %AppData% to the destination folder
robocopy %source% %destination% /e /xo /xc /xn /xx

echo.
cls
echo.
echo [36mCopyright(c) by Thomas[0m
echo.
echo [35mPress Enter to exit...[0m
pause >nul