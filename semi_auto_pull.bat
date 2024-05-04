@echo off
setlocal enabledelayedexpansion

title Automated Git Pull Request - time0ut
echo Automated Git Pull Request - time0ut

echo ================================================================================
echo warning: Please ensure that your changes works before making pull requests
echo ================================================================================

:: ensure that git is configured on your system
git --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed or configured properly
    pause
    exit
)

set "current_dir=%CD%"

echo.
echo Ensure that you have cloned the repo and you are in the same directory

set /p fname="Enter the repo name: "

set "fpath=%current_dir%\%fname%"

:: Navigate to the repository directory
cd %fpath% || (
    echo Directory "%fpath%" not found. Exiting.
    pause
    exit /b
)

echo Entering repo...

set /p branch_name="Enter new branch name [Press Enter for default]: "

if "%branch_name%"=="" (
	set "branch_name=time0ut"
)


git checkout -b %branch_name%
echo Creating new branch: %branch_name%
echo Using %branch_name%...

echo Make your changes to your repo file now!
echo To be safe, keep me in the background!
pause

set /p cmsg="Commit Message: "

:: git stuff
git add .
git commit -m "%cmsg%"
git push --set-upstream origin %branch_name%

pause
exit
