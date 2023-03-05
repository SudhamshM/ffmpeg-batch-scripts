@echo off
echo Convert video file from one format to another without re-encoding
ffmpeg -i %1 -i %2 -map 0:v -map 1:a -c copy "%~n1.mp4"
pause