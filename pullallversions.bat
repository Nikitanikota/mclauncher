@echo off
mkdir minecraftversions
del ids.txt
del urls.txt
echo.  > urls.txt
echo.  > ids.txt
curl https://launchermeta.mojang.com/mc/game/version_manifest.json -o versions.json
py file.py > output.json
copy ids.txt minecraftversions
copy urls.txt minecraftversions
copy curlf.bat minecraftversions
cd minecraftversions
for /f "tokens=*" %%a in (ids.txt) do (
  mkdir %%a > nul

)
start /min curlf.bat
pause