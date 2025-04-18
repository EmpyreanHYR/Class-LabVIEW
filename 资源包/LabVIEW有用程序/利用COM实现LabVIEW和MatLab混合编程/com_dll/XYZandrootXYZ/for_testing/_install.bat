@ECHO OFF

:START
SETLOCAL
set FILE=XYZandrootXYZ_1_0.dll
ECHO Registering %FILE%...
where MWRegsvr 1>NULL 2>&1
if ERRORLEVEL 1 GOTO USEREGSVR


MWRegsvr %FILE%
IF ERRORLEVEL 1 GOTO :USERONLYREG
GOTO :SUCCESS

:USERONLYREG
ECHO. 
SET YOURINPUT=
Set /P YOURINPUT=Do you want to register the component for YOU only? [Y]es or [N]o:
IF NOT "%YOURINPUT%"=="" SET YOURINPUT=%YOURINPUT:~0,1%
IF /I "%YOURINPUT%" == "Y" (
  ECHO Registering the component for you only...  
    MWRegsvr /useronly %FILE%
  if ERRORLEVEL 1 GOTO FAILURE
  GOTO SUCCESS
)
ECHO Did not register the component.
GOTO END

:USEREGSVR
REM if mwregsvr is not available use regsvr32
ECHO Using regsvr32 to register the component...
regsvr32 %FILE%
GOTO SUCCESS

:FAILURE
ECHO Failed to register the component.
GOTO END


:SUCCESS
ECHO Please refer to the documentation for any additional setup steps.
GOTO END

:END
ENDLOCAL
ECHO.