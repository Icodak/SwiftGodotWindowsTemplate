@echo off
:: Check if config.cfg exists
if not exist "config.cfg" (
    echo Error: config.cfg not found in the current directory.
    exit /b 1
)

:: Read Godot path from config.cfg
set "GODOT_PATH="
for /f "usebackq tokens=2 delims==" %%a in ("config.cfg") do (
    set "GODOT_PATH=%%a"
)

"%GODOT_PATH%" --resolution 2048x1024 --path ../ --scene "res://start_game.tscn"
if %errorlevel% neq 0 exit /b %errorlevel%
exit