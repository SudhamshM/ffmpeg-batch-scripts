@echo off
set /p filename="What is the filename with extension: "
ffmpeg -hide_banner -i "%filename%" -filter_complex "[0:v]select='if(gte(t,ld(1)+10),st(1,t)*0,if(ld(1),gte(t,ld(1)+2),1))',setpts=N/(30*TB),scale=hd480;[0:a]aselect='if(gte(t,ld(1)+10),st(1,t)*0,if(ld(1),gte(t,ld(1)+2),1))',asetpts=N/SR/TB" -preset fast OUT.mp4
pause