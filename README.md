# HLS_AoD_FFmpeg_Script
Script for convert audio file to HLS format with FFmpeg library

For use this script you need to download and extract FFmpeg library from https://ffmpeg.org/download.html

this script can convert audio files to HLS format with following structures:

Chunk size set to 4sec and this size is the best option between high adapting streaming and efficiency.if you need to change chunk's duration you can change "-hls_time 4" to any other duration.

For executing this script you can execute the following command for all qualities. c:\...\hls d:\Media\Test.mp3

Finally: for every execution, this script creates a directory same with the filename and save all chunks with "128k_%%04d.mp3" or... and for each quality create on .m3u8 QualityPlaylist file and in every directory u have one MasterPlaylist: playlist.m3u8
