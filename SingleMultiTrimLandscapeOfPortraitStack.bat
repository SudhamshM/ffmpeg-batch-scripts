@echo off
echo Choose a video file to split into three parts and portrait crop in landscape style
set /p filename="Filename with extension: "
ffmpeg -ss 00:00:46.000 -i %filename% -c:v copy -c:a copy -t 00:08:00 "trimmed1.mp4"
ffmpeg -ss 00:08:26.000 -i %filename% -c:v copy -c:a copy -t 00:08:00 "trimmed2.mp4"
ffmpeg -ss 00:17:31.000 -i %filename% -c:v copy -c:a copy -t 00:08:00 "trimmed3.mp4"
ffmpeg -i "trimmed1.mp4" -i "trimmed2.mp4" -i "trimmed3.mp4" -filter_complex "[0:v]crop=0.33*iw:ih[v0];[1:v]crop=0.33*iw:ih[v1];[2:v]crop=0.33*iw:ih[v2];[v0][v1][v2]hstack=inputs=3[grid];[0:a][1:a][2:a]amerge=inputs=3[af]" -map "[grid]" -map "[af]" -vsync 2 -ac 2 -preset veryfast "2x2gridvideotest.mp4"
pause