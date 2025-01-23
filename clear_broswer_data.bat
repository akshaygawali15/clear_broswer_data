@echo off
echo Clearing browser data...
echo.

:: Close all browsers
taskkill /IM chrome.exe /F >nul 2>&1
taskkill /IM msedge.exe /F >nul 2>&1
taskkill /IM firefox.exe /F >nul 2>&1
taskkill /IM opera.exe /F >nul 2>&1
taskkill /IM brave.exe /F >nul 2>&1

:: Clear Chrome cache
echo Clearing Chrome cache...
del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*"
del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Code Cache\*"
del /q /s "%LOCALAPPDATA%\Google\Chrome\User Data\Default\GPUCache\*"

:: Clear Microsoft Edge cache
echo Clearing Edge cache...
del /q /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*"
del /q /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Code Cache\*"
del /q /s "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\GPUCache\*"

:: Clear Firefox cache
echo Clearing Firefox cache...
del /q /s "%APPDATA%\Mozilla\Firefox\Profiles\*\cache2\entries\*"

:: Clear Brave cache
echo Clearing Brave cache...
del /q /s "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Cache\*"
del /q /s "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Code Cache\*"
del /q /s "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\GPUCache\*"

:: Clear Opera cache
echo Clearing Opera cache...
del /q /s "%APPDATA%\Opera Software\Opera Stable\Cache\*"

echo All browser data cleared.
pause
