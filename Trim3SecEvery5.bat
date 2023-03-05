@echo off
set /p filename="What is the filename with extension: "
set /p framerate="What is the frame-rate? Round up to nearest integer: "
ffmpeg -hide_banner -i "%filename%" -filter_complex "[0:v]select='if(gte(t,ld(1)+5),st(1,t),if(ld(1),gt(t,ld(1)+3),1))',setpts=N/(%framerate%*TB),scale=hd480;[0:a]aselect='if(gte(t,ld(1)+5),st(1,t),if(ld(1),gt(t,ld(1)+3),1))',asetpts=N/SR/TB" -c:v libx264 -c:a libmp3lame -preset veryfast OUT.mp4
pause