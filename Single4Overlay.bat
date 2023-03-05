@echo off
echo Overlay 4 smaller copies of the same video in 4 corners
set /P filename="What's the file name with the extension:"
ffmpeg -hide_banner -i %filename% -filter_complex "[0]split=5[v0][v1][v2][v3][v4];[v1]scale=nhd[scaled0];[v2]scale=nhd[scaled1];[v3]scale=nhd[scaled2];[v4]scale=nhd[scaled3];[v0][scaled0]overlay=20:20[OL0];[OL0][scaled1]overlay=main_w-(overlay_w+20)[OL1];[OL1][scaled2]overlay=10:main_h-(overlay_h+10)[OL2];[OL2][scaled3]overlay=main_w-(overlay_w+20):main_h-(overlay_h+20)[OL3];[OL3]scale=hd480[OL3]" -map [OL3] -map 0:a fouroverlaytest.mp4
pause