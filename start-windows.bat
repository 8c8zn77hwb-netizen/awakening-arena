@echo off
setlocal
set "GAME=%~dp0index.html"
if not exist "%GAME%" (
  echo Game file not found: %GAME%
  pause
  exit /b 1
)
start "" "%GAME%"
