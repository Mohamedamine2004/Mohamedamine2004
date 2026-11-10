@echo off
setlocal enabledelayedexpansion

:: ═══════════════════════════════════════════════════════════════════
::  GitHub Profile Deploy Script — Mohamed Lamine Saidane
::  Safely initializes and pushes your profile README to GitHub
:: ═══════════════════════════════════════════════════════════════════

echo ===================================================
echo   Deploying GitHub Profile for Mohamedamine2004
echo ===================================================
echo.

:: Step 1: Change directory to this script's folder
cd /d "%~dp0"

:: Step 2: Initialize a clean Git repository if not already present
if not exist ".git" (
    echo [*] Initializing local Git repository...
    git init -b main
) else (
    echo [*] Git repository already initialized.
)

:: Step 3: Check and configure the remote repository URL
git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    echo [*] Adding remote origin: https://github.com/Mohamedamine2004/Mohamedamine2004.git
    git remote add origin https://github.com/Mohamedamine2004/Mohamedamine2004.git
) else (
    echo [*] Remote origin already configured.
)

:: Step 4: Stage only the profile assets
echo [*] Staging README.md and GitHub Actions workflows...
git add README.md .github/ task.md

:: Step 5: Create a commit
echo [*] Creating commit...
git commit -m "feat: launch modern Bento-style GitHub profile"

:: Step 6: Push to GitHub
echo.
echo [*] Ready to push to GitHub!
echo     Target: https://github.com/Mohamedamine2004/Mohamedamine2004 (main branch)
echo.
set /p confirm="Do you want to push now? (y/n): "
if /i "%confirm%"=="y" (
    echo [*] Pushing to GitHub...
    git push -u origin main
    if %errorlevel% equ 0 (
        echo.
        echo [SUCCESS] Profile successfully published!
        echo Visit: https://github.com/Mohamedamine2004
    ) else (
        echo.
        echo [INFO] If this is your first push to an existing repo, try:
        echo        git push -u origin main --force
    )
) else (
    echo [*] Push cancelled. You can run this script anytime!
)

echo.
pause

