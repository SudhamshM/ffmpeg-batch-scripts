set /p url="URL M3U8: "
ffmpeg -i %url% -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 file.mp4