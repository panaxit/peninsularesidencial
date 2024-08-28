@echo off
echo Do you want to continue? (y/n)
choice /m "Continue"
if errorlevel 2 exit

git pull
git add .
git commit -am "Actualizando datos"
git config remote.origin.push HEAD
git push
pause
