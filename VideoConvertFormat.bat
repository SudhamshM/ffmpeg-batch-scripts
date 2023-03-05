@echo off
echo Convert video file from one format to another without re-encoding
set /p file="Input filename with extension to convert: "
set /p out="Output filename with extension: "
ffmpeg -i %file% -c copy "%out%"
pause