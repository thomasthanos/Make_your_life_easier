:: ==================================================
::  Temp Files Delete
:: ==================================================
::  Dev  - Thomas
::  Help - ChatGPT
::  Link - https://github.com/thomasthanos/update_apps
::
::  changelog for v1.1: -----
:: ==================================================

@echo off
color F

set /a tempFilesDeleted=0
for /f %%F in ('dir /b /a-d "C:\Windows\Temp\*" 2^>nul ^| find /c /v ""') do set "tempFilesDeleted=%%F"
del /q /s /f "C:\Windows\Temp\*.*"
for /d %%i in ("C:\Windows\Temp\*") do (
    rmdir /s /q "%%i"
)

timeout /t 3 >nul
cls
echo.
cls && echo( && echo     [94mDIAGRAFTIKE TO temp[90m ///// [33m%tempFilesDeleted% [31mfiles deleted from C:\Windows\Temp.[0m
echo.
REM Countdown for 10 seconds
for /l %%i in (5,-1,1) do (
    echo.
    echo   Start another %%i seconds...
    timeout /t 1 >nul
)


REM Delete contents of %temp% folder
set /a userTempFilesDeleted=0
for /f %%F in ('dir /b /a-d "%temp%\*" 2^>nul ^| find /c /v ""') do set "userTempFilesDeleted=%%F"
del /q /s /f "%temp%\*.*"
for /d %%i in ("%temp%\*") do (
    rmdir /s /q "%%i"
)

timeout /t 3 >nul
cls
echo.
cls && echo( && echo     [94mDIAGRAFTIKE TO \AppData\Local\Temp[90m ///// [33m%userTempFilesDeleted% [31mfiles deleted from \AppData\Local\Temp directory.[0m
echo.
REM Countdown for 10 seconds
for /l %%i in (5,-1,1) do (
    echo.
    echo   Start another %%i seconds...
    timeout /t 1 >nul
)

REM Delete prefetch files
set /a prefetchFilesDeleted=0
for /f %%F in ('dir /b /a-d "%SystemRoot%\Prefetch\*" 2^>nul ^| find /c /v ""') do set "prefetchFilesDeleted=%%F"
del /q /f /s "%SystemRoot%\Prefetch\*.*"

timeout /t 3 >nul
cls
echo.
cls && echo( && echo     [94mDIAGRAFTIKE TO prefetch[90m ///// [33m%prefetchFilesDeleted% [31mfiles deleted from prefetch directory.[0m
echo.
cls
echo.
echo [36mCopyright(c) by Thomas[0m
echo.
echo [35mPress Enter to exit...[0m
pause >nul
