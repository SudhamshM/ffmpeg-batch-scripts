@echo off
mkdir parted
set /p extension="URL: "
IDMan /d "%extension%" /p "C:\Users\sudha\Downloads\Video\blanks" /f "parted/testfile.mp4" /n /h
pause
set /p start="Start to trim in sec: "
set /p end="Duration of clip in sec: "
ffmpeg -ss %start% -i "parted/testfile.mp4" -t %end% -c copy "parted/trimmed.mp4"
del "parted/testfile.mp4"
pause