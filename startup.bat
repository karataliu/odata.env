@echo off
doskey /MACROFILE=%~dp0aliases.doskey
PATH=%PATH%;C:\Program Files (x86)\MSBuild\12.0\Bin
echo Welcome to OData!
echo Current dev branch:
git branch
echo on