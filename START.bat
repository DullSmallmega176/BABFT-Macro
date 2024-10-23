@echo off
cd %~dp0

if exist "main\Logic.ahk" (
    if exist "main\AutoHotkey64.exe" (
        start "" "%~dp0main\AutoHotkey64.exe" "%~dp0main\Logic.ahk"
    )
)
