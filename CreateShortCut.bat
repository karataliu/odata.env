@echo off

if t%1==t (
    echo missing git root dir
    goto END
)

setlocal
set SCRIPT="%TEMP%\CR%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") > %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\OData.lnk"  >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile)      >> %SCRIPT%
echo oLink.TargetPath = "%windir%\system32\cmd.exe" >> %SCRIPT%
echo oLink.Arguments = "/k %~dp0startup.bat"        >> %SCRIPT%    
echo oLink.IconLocation = "%~dp0artwork\o1.ico"     >> %SCRIPT%
echo oLink.WorkingDirectory = "%1"               >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
endlocal

:END
echo on