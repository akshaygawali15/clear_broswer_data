@echo off
echo Logging out from all accounts and clearing browser data...
echo.

:: Close all browsers
echo Closing all browsers...
taskkill /IM chrome.exe /F >nul 2>&1
taskkill /IM msedge.exe /F >nul 2>&1
taskkill /IM firefox.exe /F >nul 2>&1
taskkill /IM opera.exe /F >nul 2>&1
taskkill /IM brave.exe /F >nul 2>&1

:: Clear Chrome data (cookies, sessions, cache)
echo Clearing Chrome data...
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache"
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Code Cache"
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\GPUCache"
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Session Storage"
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies"
rd /s /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Local Storage"

:: Clear Microsoft Edge data
echo Clearing Edge data...
rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache"
rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Code Cache"
rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\GPUCache"
rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Session Storage"
rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cookies"
rd /s /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Local Storage"

:: Clear Firefox data
echo Clearing Firefox data...
rd /s /q "%APPDATA%\Mozilla\Firefox\Profiles\*\cache2"
rd /s /q "%APPDATA%\Mozilla\Firefox\Profiles\*\cookies.sqlite"
rd /s /q "%APPDATA%\Mozilla\Firefox\Profiles\*\storage"

:: Clear Brave data
echo Clearing Brave data...
rd /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Cache"
rd /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Code Cache"
rd /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\GPUCache"
rd /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Session Storage"
rd /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Cookies"
rd /s /q "%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default\Local Storage"

:: Clear Opera data
echo Clearing Opera data...
rd /s /q "%APPDATA%\Opera Software\Opera Stable\Cache"
rd /s /q "%APPDATA%\Opera Software\Opera Stable\Session Storage"
rd /s /q "%APPDATA%\Opera Software\Opera Stable\Cookies"
rd /s /q "%APPDATA%\Opera Software\Opera Stable\Local Storage"

echo All browser accounts logged out and data cleared.
pause
