@echo off
echo Convert video file from video to audio
(for %%i in (mp4folder/*.*) do ffmpeg -i "mp4folder/%%i" -map 0:a "%%i.mp3")