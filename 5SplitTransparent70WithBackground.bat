@echo off
echo Choose 4 videos for 70% transparency and a 5th video for background, in splitscreen
set /p f1="Filename of video 1/background with ext: "
set /p f2="Filename of video 2 with ext: "
set /p f3="Filename of video 3 with ext: "
set /p f4="Filename of video 4 with ext: "
set /p f5="Filename of video 5 with ext: "
ffmpeg -i "%f1%" -i "%f2%" -i "%f3%" -i "%f4%" -i "%f5%" -filter_complex "[1:v]scale=320:-1[v1];[v1]format=rgba,colorchannelmixer=aa=0.7[fg];[2:v]scale=320:-1[v2];[v2]format=rgba,colorchannelmixer=aa=0.7[v2];[3:v]scale=320:-1[v3];[v3]format=rgba,colorchannelmixer=aa=0.7[v3];[4:v]scale=320:-1[v4];[v4]format=rgba,colorchannelmixer=aa=0.7[v4];[0][fg]overlay=20:20[OL0];[OL0][v2]overlay=main_w-overlay_w-10:10[OL1];[OL1][v3]overlay=10:main_h-(overlay_h+10)[OL2];[OL2][v4]overlay=main_w-(overlay_w+20):main_h-(overlay_h+20)[OL3];[0:a][1:a][2:a][3:a][4:a]amix=inputs=5[af]" -map "[OL3]"  -shortest -map [af] -ac 2 -vsync 2 fouroverlaytest.mp4
pause