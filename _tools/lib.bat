cd "%~dp0"

set DIRNAME=%~dp0
set GAME_DIR=%DIRNAME%..

rem Scripts.rvdata2
set SCRIPTS_RVDATA2=%GAME_DIR%\Data\Scripts.rvdata2
set SCRIPTS_DIR=%GAME_DIR%\_scripts
set SCRIPTS_CONFIG=%SCRIPTS_DIR%\Scripts.conf.rb

rem Game.exe
set GAME_EXE=%GAME_DIR%\Game.exe
set GAME_INI=%GAME_DIR%\Game.ini
set GAME_EXE_BAK=%GAME_DIR%\_Game.exe
set GAME_INI_BAK=%GAME_DIR%\_Game.ini
set ASSET_GAME_EXE=%DIRNAME%assets\Game.exe
set ASSET_HOOK_PREBOOT_BAT=%DIRNAME%assets\hook_preboot.bat
set ASSET_HOOK_POSTBOOT_BAT=%DIRNAME%assets\hook_postboot.bat
set HOOK_PREBOOT_BAT=%GAME_DIR%\hook_preboot.bat
set HOOK_POSTBOOT_BAT=%GAME_DIR%\hook_postboot.bat
