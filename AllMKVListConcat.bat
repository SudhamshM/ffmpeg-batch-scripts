(for %%i in (*.mkv) do @echo file '%%i') > mylist.txt
pause
ffmpeg -f concat -safe 0 -i mylist.txt -c:a copy -c:v copy output.mp4
pause