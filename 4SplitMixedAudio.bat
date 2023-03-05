@echo off
echo Choose 4 files to create split screen with individual and mixed audio streams
set /p f1="Filename of video 1 with ext: "
set /p f2="Filename of video 2 with ext: "
set /p f3="Filename of video 3 with ext: "
set /p f4="Filename of video 4 with ext: "
ffmpeg -i "%f1%" -i "%f2%" -i "%f3%" -i "%f4%" -filter_complex "[0:v][1:v][2:v][3:v]xstack=inputs=4:layout=0_0|0_h0|w0_0|w0_h0[stk];[stk]scale=hd480[stk];[0:a][1:a][2:a][3:a]amix=inputs=4[af]" -map [stk] -map [af] -vsync 2 -ac 2 -crf 28 -preset veryfast "4audiopromo.mp4"