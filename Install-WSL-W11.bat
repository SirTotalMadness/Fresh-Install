winget update --all
wsl --install --d Ubuntu
REM #Get current user profile
set userProfile=%USERPROFILE%

REM #Append WSL configuration settings to the .wslconfig file
echo [wsl2] >> "%userProfile%\.wslconfig"
echo. >> "%userProfile%\.wslconfig"
echo networkingMode=Mirrored >> "%userProfile%\.wslconfig"