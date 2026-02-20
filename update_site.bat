@echo off
echo ===================================================
echo   Japan Travel Dashboard - Auto Update Script
echo ===================================================
echo.
echo Adding changes to Git...
git add .

echo.
set /p "commit_msg=Enter update description: "
if "%commit_msg%"=="" set "commit_msg=Update website content"

echo Committing changes...
git commit -m "%commit_msg%"

echo.
echo Uploading to GitHub...
git push origin main

echo.
echo ===================================================
echo   Update Complete! 
echo   Your site will refresh in 1-2 minutes.
echo ===================================================
pause
