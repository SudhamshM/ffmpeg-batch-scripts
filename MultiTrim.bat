for %%a in ("*.mp4") do ffmpeg -i "%%a" -ss 3 -c copy "newfiles\%%~na.mp4"
pause