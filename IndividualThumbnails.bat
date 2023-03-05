@echo off
echo Generate video screencaps/thumbnails with total duration and amount of caps
set /p filename="What is the filename with extension: "
set /p duration="What is the total duration in seconds: "
set /p images="How many pictures do you need: "
ffmpeg -hide_banner -i "%filename%" -vf "fps=1/(%duration%/%images%)" img-%%3d.jpg
echo Created %images% thumbnails!
pause