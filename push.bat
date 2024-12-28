@echo off

git add .
git commit -m "[%username%] [%time%] [%date%]"

git push

timeout /t 1 /nobreak

git push

pause
cls
