:: ==================================================
::  Update all apps
:: ==================================================
::  Dev  - Thomas
::  Help - ChatGPT
::  Link - https://github.com/thomasthanos/update_apps
::
::  changelog for v1.1: -----
:: ==================================================


@echo off
echo.
echo [35mKanei Update oles tis efarmoges![0m

echo [90;2m_________________________________[0m
echo.
echo  [94;2m============       ///       ///[0m
echo  [94;2m    ///            ///       ///[0m
echo  [94;2m    ///            ///       ///[0m 
echo  [94;2m    ///            /// ///// ///[0m
echo  [94;2m    ///            ///       ///[0m  
echo  [94;2m    ///            ///       ///[0m
echo  [94;2m    ///            ///       ///[0m
echo.
echo [31;6mPress Enter.[0m
pause >nul
cls

winget upgrade
echo.
echo [31;6mPress Enter.[0m
pause >nul
winget upgrade --all

echo.
echo [36mCopyright(c) by Thomas[0m
echo.
echo [35mPress Enter to exit...[0m
pause >nul
