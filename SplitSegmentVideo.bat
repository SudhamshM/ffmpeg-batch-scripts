@echo off
echo Choose a video file to split into near-equal duration segments
set /p file="What is the video name with extension: "
set /p durationSec="Duration of each segment in seconds: "
ffmpeg -i %file% -f segment -segment_time %durationSec% -reset_timestamps 1 -c copy %file%-%%2d.mp4
pause