@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul

echo.
echo ==========================================
echo   Xiao Ti Pack - Installer (Windows)
echo ==========================================
echo.

set "DEST=%USERPROFILE%\.workbuddy"

if not exist "%DEST%" (
    echo [1/4] Creating %DEST%
    mkdir "%DEST%"
) else (
    echo [1/4] Target exists: %DEST%
)

if not exist "%DEST%\skills" mkdir "%DEST%\skills"

echo [2/4] Backing up existing persona files
if exist "%DEST%\SOUL.md"     copy /Y "%DEST%\SOUL.md"     "%DEST%\SOUL.md.bak"     >nul 2>&1
if exist "%DEST%\IDENTITY.md" copy /Y "%DEST%\IDENTITY.md" "%DEST%\IDENTITY.md.bak" >nul 2>&1
if exist "%DEST%\USER.md"     copy /Y "%DEST%\USER.md"     "%DEST%\USER.md.bak"     >nul 2>&1

echo [3/4] Copying persona files
copy /Y "persona\SOUL.md"     "%DEST%\SOUL.md"     >nul
copy /Y "persona\IDENTITY.md" "%DEST%\IDENTITY.md" >nul

if exist "%DEST%\USER.md" (
    echo       USER.md already exists - kept yours, not overwritten
) else (
    copy /Y "persona\USER.md" "%DEST%\USER.md" >nul
)

echo [4/4] Copying skill folder
if not exist "%DEST%\skills\ai-prompt-finder" mkdir "%DEST%\skills\ai-prompt-finder"
xcopy "skills\ai-prompt-finder\*" "%DEST%\skills\ai-prompt-finder\" /E /Y /I >nul

echo.
echo ==========================================
echo   Done.
echo.
echo   Next: restart WorkBuddy, then say "初始化"
echo ==========================================
echo.
pause
