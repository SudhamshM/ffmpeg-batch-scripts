@echo off
echo Choose 5 videos to make splitscreen with one of them small in center
set /p f1="Filename of video 1 with ext: "
set /p f2="Filename of video 2 with ext: "
set /p f3="Filename of video 3 with ext: "
set /p f4="Filename of video 4 with ext: "
set /p f5="Filename of video 5/center with ext: "
ffmpeg -i "%f1%" -i "%f2%" -i "%f3%" -i "%f4%" -i "%f5%" -filter_complex "[4:v]scale=hd480[v4];[0:v][1:v][2:v][3:v]xstack=inputs=4:layout=0_0|0_h0|w0_0|w0_h0[out];[out][v4]overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2:shortest=1[out];[out]scale=hd480[out];[0:a][1:a][2:a][3:a][4:a]amix=inputs=5[af]" -map "[out]" -map "[af]" -metadata:s:a:0 title="All-Audios" -map 0:a -metadata:s:a:1 title="Top-Left" -map 1:a -metadata:s:a:2 title="Bottom-Left" -map 2:a -metadata:s:a:3 title="Top-Right" -map 3:a -metadata:s:a:4 title="Bottom-Right" -ac 2 -vsync 2 -preset ultrafast middleout.mp4
pause