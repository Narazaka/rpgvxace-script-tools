@echo off
cd "%~dp0"

call lib.bat

if exist "%GAME_EXE_BAK%" exit /b 1

move "%GAME_EXE%" "%GAME_EXE_BAK%"
move "%GAME_INI%" "%GAME_INI_BAK%"
copy "%ASSET_GAME_EXE%" "%GAME_EXE%"
copy "%ASSET_HOOK_PREBOOT_BAT%" "%HOOK_PREBOOT_BAT%"
copy "%ASSET_HOOK_POSTBOOT_BAT%" "%HOOK_POSTBOOT_BAT%"
