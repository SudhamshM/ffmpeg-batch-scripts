@echo off
set /p extension="Extension to convert to MKV: "
for %%a in ("*.%extension%") do ffmpeg -i "%%a" -c copy "%%~na.mkv"
pause