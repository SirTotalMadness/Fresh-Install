winget update --all
wsl --install --d Ubuntu

@echo off
REM Get the current user's home directory
set userProfile=%USERPROFILE%

REM Append WSL configuration settings to the .wslconfig file
echo [wsl2] >> "%userProfile%\.wslconfig"
echo networkingMode=Mirrored >> "%userProfile%\.wslconfig"
