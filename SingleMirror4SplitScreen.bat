echo Choose one video to mirror on the central axis 4 times in Ultrafast preset
set /p videoname="What is the video file name?"
echo %videoname% is the file you chose because %videoname% is the %videoname% name
ffmpeg -i "%videoname%.mp4" -filter_complex "split=4[v0][v1][v2][v3];[v1]hflip[v1];[v2]vflip[v2];[v3]hflip[v3];[v3]vflip[v3];[v0][v1][v2][v3]xstack=inputs=4:layout=0_0|w0_0|0_h0|w0_h0[grid];[grid]scale=hd480[grid]" -map "[grid]" -map "0:a" -ac 2 -preset ultrafast "2x2gridvideotest.mp4"
pause