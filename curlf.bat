@Echo Off
setlocal EnableDelayedExpansion
< ids.txt (
  FOR /F "delims=" %%A in (urls.txt) DO (
    cls
    set /p lineFromFile2=
    curl %%A -o !lineFromFile2!\!lineFromFile2!.json
    copy !lineFromFile2!\!lineFromFile2!.json file.json
    copy file2.py !lineFromFile2!\!lineFromFile2!\file2.py
    py !lineFromFile2!\!lineFromFile2!\file2.py
    set file=< !lineFromFile2!\!lineFromFile2!\download.txt
    curl %file% -o !lineFromFile2!\D!lineFromFile2!.json
    ping localhost -n 2 > nul


  )
)
pause