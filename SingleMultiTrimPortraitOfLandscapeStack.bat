@echo off
echo Choose a video to have a vertical stack of landscape videos.
set /p file="What is the filename? "
ffmpeg -ss 00:08:01.000 -i "%file%" -c:v copy -c:a copy -t 00:08:00 "trimmed1.mp4"
ffmpeg -ss 00:16:51.000 -i "%file%" -c:v copy -c:a copy -t 00:08:00 "trimmed2.mp4"
ffmpeg -ss 00:24:00.000 -i "%file%" -c:v copy -c:a copy -t 00:08:00 "trimmed3.mp4"
ffmpeg -i "trimmed1.mp4" -i "trimmed2.mp4" -i "trimmed3.mp4" -filter_complex "[0:v]crop=iw*0.6:ih[v0];[1:v]crop=iw*0.6:ih[v1];[2:v]crop=iw*0.6:ih[v2];[v0][v1][v2]vstack=inputs=3[grid];[1:a][0:a][2:a]amerge=inputs=3[af]" -map "[grid]" -map "[af]" -vsync 2 -ac 2 -preset veryfast "portofland.mp4"
pause