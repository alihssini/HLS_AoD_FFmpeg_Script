@ECHO off
Rem This command will create a AoD HLS from a .mp3 source audio.Developed by: Ali Hosseini
time /T
echo Conversion started
set ffmpeg_home=%FFMPEG_HOME%
set file_name=%1
set directory_name=%file_name:~0,-4%
echo Creating output directory ...
MD %directory_name%
echo Creating playlist.m3u8
echo #EXTM3U >> %directory_name%/playlist.m3u8
#echo #EXT-X-VERSION:3 >> %directory_name%/playlist.m3u8
#echo #EXT-X-STREAM-INF:PROGRAM-ID=1, BANDWIDTH=2560000.0 >> %directory_name%/playlist.m3u8
#echo 256K.m3u8 >> %directory_name%/playlist.m3u8
#ffmpeg -i %file_name% -c:a libmp3lame -b:a 256k -map 0:0 -f segment -segment_time 4 -segment_list %directory_name%/256K.m3u8 -segment_format mp3 %directory_name%/256K_%%04d.mp3
#echo #EXT-X-STREAM-INF:PROGRAM-ID=1, BANDWIDTH=1280000.0 >> %directory_name%/playlist.m3u8
#echo 128K.m3u8 >> %directory_name%/playlist.m3u8
#ffmpeg -i %file_name% -c:a libmp3lame -b:a 128k -map 0:0 -f segment -segment_time 4 -segment_list %directory_name%/128K.m3u8 -segment_format mp3 %directory_name%/128K_%%04d.mp3
echo #EXT-X-STREAM-INF:PROGRAM-ID=1, BANDWIDTH=960000.0 >> %directory_name%/playlist.m3u8
echo 96K.m3u8 >> %directory_name%/playlist.m3u8
ffmpeg -i %file_name% -c:a libmp3lame -b:a 96k -map 0:0 -f segment -segment_time 4 -segment_list %directory_name%/96K.m3u8 -segment_format mp3 %directory_name%/96K_%%04d.mp3
echo #EXT-X-STREAM-INF:PROGRAM-ID=1, BANDWIDTH=640000.0 >> %directory_name%/playlist.m3u8
echo 64K.m3u8 >> %directory_name%/playlist.m3u8
ffmpeg -i %file_name% -c:a libmp3lame -b:a 64k -map 0:0 -f segment -segment_time 4 -segment_list %directory_name%/64K.m3u8 -segment_format mp3 %directory_name%/64K_%%04d.mp3
echo #EXT-X-STREAM-INF:PROGRAM-ID=1, BANDWIDTH=320000.0 >> %directory_name%/playlist.m3u8
echo 32K.m3u8 >> %directory_name%/playlist.m3u8
ffmpeg -i %file_name% -c:a libmp3lame -b:a 32k -map 0:0 -f segment -segment_time 4 -segment_list %directory_name%/32K.m3u8 -segment_format mp3 %directory_name%/32K_%%04d.mp3
time /T