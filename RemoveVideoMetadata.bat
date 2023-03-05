@echo off
echo Remove a video/audio file's metadata (^if it is un-editable) so you can add your own.
set /p filename="What is the filename?"
set /p ext="What is the extension (using both for input and output)?"
ffmpeg -i "%filename%%ext%" -map_metadata -1 -c copy "%filename%-rem%ext%"