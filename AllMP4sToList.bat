(for %%i in (*.mp4) do @echo file '%%i') > mylist.txt
pause
ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4
pause