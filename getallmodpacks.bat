@echo off
git fetch
git pull
xcopy /E /I C:\Users\nikit\OneDrive\documents\new\_upload\ %homepath%\onedrive\desktop\new 
del launcher.jar.pack
set p=%cd%
cd C:\Users\nikit\OneDrive\Desktop\Launcher-master\launcher-fancy\build\libs\
del launcher.jar.pack
pack200 --no-gzip launcher.jar.pack launcher-fancy-4.3-SNAPSHOT-all.jar
cd %p%
copy C:\Users\nikit\OneDrive\Desktop\Launcher-master\launcher-fancy\build\libs\launcher.jar.pack launcher.jar.pack
ping localhost -n 10 > nul

cls
wsl php packages.php > packages.json
git add latest.json
git add packages.json
git add launcher.jar.pack
git add objects
git add libraries
git commit -m "modpack update"
git push
ping localhost -n 5 > nul
exit