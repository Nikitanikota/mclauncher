@Echo Off
setlocal EnableDelayedExpansion
< ids.txt (
  FOR /F "delims=" %%A in (urls.txt) DO (
    cls
    set /p lineFromFile2=
    curl %%A -o !lineFromFile2!\!lineFromFile2!.json
    copy !lineFromFile2!\!lineFromFile2!.json !lineFromFile2!\file.json
    copy %cd%\file2.py !lineFromFile2!\file.py
    ping localhost -n 5 > nul
    py !lineFromFile2!\file2.py
    ping localhost -n 2 > nul
    set file=< download.txt
    curl %file% -o !lineFromFile2!\D!lineFromFile2!.json
    pause


  )
)
pause