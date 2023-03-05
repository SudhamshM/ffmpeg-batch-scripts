@echo off
ffmpeg -hide_banner -i %1 "%~n1.srt"
pause