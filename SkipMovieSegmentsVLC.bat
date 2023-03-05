@echo off
echo Skip segments of video in vlc commandline!
set /p filename="What is the video name with extension?"
vlc --start-time=35 --stop-time=40 --fullscreen --play-and-exit "%filename%"
vlc --start-time=42 --stop-time=48 --fullscreen --play-and-exit "%filename%"