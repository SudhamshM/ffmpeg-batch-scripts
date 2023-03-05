ffmpeg -ss 00:19:30 -i %1 -t 00:20:32 -c copy part1.mp4
ffmpeg -ss 00:45:58.586 -i %1 -t 00:21:05 -c copy part2.mp4
ffmpeg -ss 01:11:31.186 -i %1 -t 00:02:15 -c copy part3.mp4
ffmpeg -ss 01:18:47 -i %1 -t 00:03:20 -c copy part4.mp4
pause