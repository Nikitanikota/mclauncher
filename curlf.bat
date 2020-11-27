@Echo Off
setlocal EnableDelayedExpansion
< ids.txt (
  FOR /F "delims=" %%A in (urls.txt) DO (
    cls
    set /p lineFromFile2=
    echo curl %%A -o !lineFromFile2!\!lineFromFile2!.json>!lineFromFile2!.bat
    echo exit>>!lineFromFile2!.bat
    ping localhost -n 2 > nul
    start /min !lineFromFile2!.bat
  )
)
pause