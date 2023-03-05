@echo off
mkdir converted
set /p extension="Extension to convert to mp4: "
for %%a in ("*.%extension%") do ffmpeg -i "%%a" -c copy "converted\%%~na.mp4"
pause