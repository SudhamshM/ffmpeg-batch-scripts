@echo off
echo Generate a mosaic of thumbnails from duration in 3x3 tile
set /p filename="What is the filename with extension: "
set /p duration="What is the duration in seconds: "
echo Running FFmpeg... it might seem stuck but it's working
ffmpeg -i "%filename%" -vf select='isnan(prev_selected_t)+gte(t-prev_selected_t\,(%duration%/9))',scale=hd480,tile=3x3 -frames:v 1 preview.png