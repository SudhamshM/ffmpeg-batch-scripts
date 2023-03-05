@echo off
set /p file="What is the filename with extension: "
ffmpeg -i "%file%" -vf "crop=in_w/2:in_h/2:(in_w-out_w)/2+((in_w-out_w)/2)*sin(n/10):(in_h-out_h)/2 +((in_h-out_h)/2)*sin(n/7)" -c:a copy "af.mp4" 
pause