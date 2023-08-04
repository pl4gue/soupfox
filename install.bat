@echo off
set "dir=%APPDATA%\Mozilla\Firefox\Profiles"
if exist "%dir%" (
    for /D %%D in ("%dir%\*default-release*") do (
        xcopy ".\chrome\" "%%D\chrome\" > nul
        xcopy ".\user.js" "%%D" > nul
    )
    echo Firefox cloned to the directories:
    for /D %%D in ("%dir%\*default-release*") do echo %%~nxD
)

set "dir="

