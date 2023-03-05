@echo off
mkdir mkvfolder
mkdir mp4folder
set /p extension="Extension to convert to MKV: "
for %%a in ("*.%extension%") do ffmpeg -i "%%a" -c copy "%%~na.mkv"
move *.mp4 mp4folder/
(for %%i in (*.mkv) do @echo file '%%i') > mylist.txt
pause
ffmpeg -f concat -safe 0 -i mylist.txt -c:a copy -c:v copy output.mp4
move *.mkv mkvfolder/
pause