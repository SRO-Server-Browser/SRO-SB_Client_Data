@echo off
title Smart Git Push System
echo ==========================
echo     SMART PUSH STARTED
echo ==========================

git reset
REM Git check
where git >nul 2>nul
if errorlevel 1 (
    echo [X] Git is not installed!
    pause
    exit /b
)

REM Repo check
if not exist ".git" (
    echo [X] This folder is not a Git repository!
    pause
    exit /b
)

REM Internet check
ping -n 1 github.com >nul 2>nul
if errorlevel 1 (
    echo [X] No internet connection, exiting...
    pause
    exit /b
)

REM Exclude auto_push.bat from tracking
echo [+] Excluding auto_push.bat from commit tracking...
git update-index --assume-unchanged auto_push.bat >nul 2>nul

REM Add small files one by one
echo [+] Adding small files...

REM Add .json files
for %%f in (*.json) do (
    git add "%%f"
)

REM Add .dll files
for %%f in (*.dll) do (
    git add "%%f"
)

REM Add .exe files
for %%f in (*.exe) do (
    git add "%%f"
)

git reset
git commit -m "json/dll/exe files" >nul 2>nul

REM Set upstream on first push
git rev-parse --abbrev-ref --symbolic-full-name @{u} >nul 2>nul
if errorlevel 1 (
    echo [+] First push, setting upstream...
    git push --set-upstream origin master || goto error
) else (
    git push || goto error
)

REM PK2 Part files
echo [+] Detecting .pk2.part files...

for /f %%f in ('dir /b /on *.pk2.part* 2^>nul') do (
    echo [+] Pushing: %%f
	git reset
    git add "%%f"
    git commit -m "Part file: %%f"
    git push || goto error
)

echo.
echo [✓] All files successfully pushed!
pause
exit /b

:error
echo.
echo [X] An error occurred during the push process!
pause
exit /b
