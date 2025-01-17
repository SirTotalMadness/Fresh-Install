winget update --all
winget install Microsoft.VisualStudioCode
wsl --install --d Ubuntu

REM
echo [wsl2] >> C:/users/ndevos/.wslconfig
echo networkingMode=Mirrored >> C:/users/ndevos/.wslconfig