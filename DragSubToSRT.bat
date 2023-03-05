@echo off
echo Convert any subtitle file to SRT
ffmpeg -i %1 "%~n1.srt"
pause