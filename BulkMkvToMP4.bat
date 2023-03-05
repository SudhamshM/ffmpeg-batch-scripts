@echo off
mkdir converted
for %%a in ("*.mkv") do ffmpeg -i "%%a" -c copy "converted\%%~na.mp4"
pause