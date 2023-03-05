@echo off
echo Remove a video/audio file's metadata (#if it is un-editable) so you can add your own.
set /p filename="What is the filename?"
ffmpeg -i "%filename%" -map 0 -map_metadata -1 -c copy "%filename%-rem.mp4"
echo Converted video to .mp4!
echo Modify any metadata before continuing to converting to .mkv
pause
ffmpeg -i "%filename%-rem.mp4" -c copy "%filename%-conv.mkv"
del "%filename%-rem.mp4"
echo Deleted mp4 file so only mkv remains with the modified changes!
pause