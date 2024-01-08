@echo off
set "dir=%APPDATA%\Mozilla\Firefox\Profiles"
if exist "%dir%" (
    for /D %%D in ("%dir%\*default-release*") do (
        xcopy /e /k /h /i /q ".\soupfox-files\" "%%D\"
    )
    echo Firefox cloned to the directories:
    for /D %%D in ("%dir%\*default-release*") do echo %%~nxD
)

set "dir="
