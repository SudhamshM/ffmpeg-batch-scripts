@echo off
echo Convert video file from one format to another without re-encoding
ffmpeg -i %1 -c copy "%~n1.mp4"
pause