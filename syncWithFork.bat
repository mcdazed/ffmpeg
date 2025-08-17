@echo off
set ROOTDIR=%~dp0
set ROOTDIR=%ROOTDIR:~0,-1%
for %%I in (.) do set CurrDirName=%%~nxI

start "" "http://google.com/"

echo .
echo .
echo .
echo Backing up repo...
echo .
echo .
echo .
pause

robocopy /s /e "%ROOTDIR%" "%ROOTDIR%.old" ^
/XD "%ROOTDIR%\.git" ^

pause

git reset --soft HEAD~32

git push origin +master --force

echo .
echo .
echo .
echo Sync fork...
echo .
echo .
echo .

start "" "https://github.com/mcdazed/ffmpeg"

pause

rd /s /q "%ROOTDIR%"

cls
