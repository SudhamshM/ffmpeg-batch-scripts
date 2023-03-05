@echo off
echo Split video to ~500mb min segments
mp4box -splits 500000 %1
pause