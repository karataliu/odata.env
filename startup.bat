@echo off
doskey /MACROFILE=%~dp0aliases.doskey
call %~dp0env.bat
echo Welcome to OData!
echo Current dev branch:
git branch
echo on