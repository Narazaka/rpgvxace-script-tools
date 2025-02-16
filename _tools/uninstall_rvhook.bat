@echo off
cd "%~dp0"

call lib.bat

if exist "%GAME_EXE_BAK%" (
    del "%GAME_EXE%"
    move "%GAME_EXE_BAK%" "%GAME_EXE%"
    if exist "%GAME_INI%" del "%GAME_INI%"
    move "%GAME_INI_BAK%" "%GAME_INI%"
    if exist "%HOOK_PREBOOT_BAT%" del "%HOOK_PREBOOT_BAT%"
    if exist "%HOOK_POSTBOOT_BAT%" del "%HOOK_POSTBOOT_BAT%"
    exit /b 0
) else (
    echo No backup found. Uninstallation aborted.
    exit /b 1
)
