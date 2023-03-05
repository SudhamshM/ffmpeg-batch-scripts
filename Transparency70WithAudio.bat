@echo off
echo Choose two videos to make one of them transparent 70% in foreground
set /p bg="What is the background video filename with ext: "
set /p tp="What is the foreground/to-be transparent video filename with ext: "
ffmpeg -i %tp% -i %bg% -filter_complex "[1:v]format=rgba,colorchannelmixer=aa=0.70[fg];[0][fg]overlay;[0][1]amerge=2" -ac 2 -vsync 2 -movflags +faststart video2.mp4