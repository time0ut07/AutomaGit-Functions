@echo off
title Automated Git Push - time0ut
echo Automated Git - time0ut

echo ================================================================================
echo warning: Please be certain in which you know the changes you have made is ok
echo ================================================================================

:: ensure that git is configured on your system
git --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed or configured properly
    pause
    exit /b
)

set "current_dir=%CD%"

echo.
echo Ensure that you have cloned the repo and you are in the same directory
echo Only use this script once you are done with your changes

set /p fname="Enter the file/repo name: "
set /p cmsg="Commit Message: "
set /p branch="Branch Name [Press Enter for default]: "

if "%branch%"=="" (
    set "branch=main"
)

set "fpath=%current_dir%\%fname%"

:: Navigate to the repository directory
cd %fpath% || (
    echo Directory "%fpath%" not found. Exiting.
    pause
    exit /b
)

:: git stuff
git add .
git commit -m "%cmsg%"
git push origin %branch%

pause
exit /b
