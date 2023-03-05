@echo off
echo Split video to 59 min segments
set /p segment="Each segment in sec: "
mkdir segmented
ffmpeg -i %1 -segment_time %segment% -c copy -f segment -reset_timestamps 1 output%%01d.mp4
move output*.mp4 segmented/
pause