@echo off
cd "%~dp0"

call lib.bat

if not exist "%SCRIPTS_CONFIG%" exit /b 1

rv2sa.exe --compose "%SCRIPTS_CONFIG%" --output "%SCRIPTS_RVDATA2%"
