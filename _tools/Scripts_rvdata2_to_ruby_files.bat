@echo off
cd "%~dp0"

call lib.bat

if not exist "%SCRIPTS_DIR%" mkdir "%SCRIPTS_DIR%"
if not exist "%SCRIPTS_RVDATA2%" exit /b 1
rv2sa.exe --decompose "%SCRIPTS_RVDATA2%" --output "%SCRIPTS_DIR%"
