@set TARGETFOLDER=C:\batscripts
@set TARGETFILE=ls.bat
@set OLDPATH=oldpath.bak
@echo Creating folder %TARGETFOLDER%
@echo ----------------------------------------------
@if not exist %TARGETFOLDER% mkdir %TARGETFOLDER%
@if not exist %TARGETFOLDER% echo ERROR: Could not create folder %TARGETFOLDER%. Run this command elevated & Exit /b
@echo Backing up path to %TARGETFOLDER%\%OLDPATH%
@echo ----------------------------------------------
@echo %PATH% > %TARGETFOLDER%\%OLDPATH%
@if not exist %TARGETFOLDER%\%OLDPATH% echo ERROR: Could not create backup. Run this command elevated & Exit /b
@echo @echo off > %TARGETFOLDER%\%TARGETFILE%
@echo dir %%1 >> %TARGETFOLDER%\%TARGETFILE%
@echo @echo on >> %TARGETFOLDER%\%TARGETFILE%
@if not exist %TARGETFOLDER%\%TARGETFILE% echo ERROR: Unknown error, exiting. /b
@set NEWPATH=%PATH%
@if not "%PATH%:~-1%%"==";" set NEWPATH=%NEWPATH%;
@ECHO.%PATH% | FIND /I "%TARGETFOLDER%\%TARGETFILE%">Nul && ( echo LS already exists in PATH, exiting & Exit /b) || ( setx path "%NEWPATH%%TARGETFOLDER%" )
@echo ----------------------------------------------
@echo Adding %TARGETFOLDER% to USER PATH
@echo ----------------------------------------------
@echo Done, please restart your command prompt for LS to work 
