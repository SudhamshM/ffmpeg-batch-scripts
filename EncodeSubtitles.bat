@echo off
echo Encode subtitles and make sure video and sub file have same name!
set /p filename="What's the video called?"
set /p sub="What's the subtitle file?"
echo Getting ready to encode %filename% with subtitles....
pause
ffmpeg -hide_banner -i "%filename%" -vf "subtitles=%sub%" -c:a copy -c:v libx264 -preset fast "%filename%-subbed.mp4"
pause
