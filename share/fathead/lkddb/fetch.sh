#!/bin/bash

# set this to true if you only wish to test the scripts, to save time and server bandwith (you need the 7z command line utility)
USE_STATIC_DUMP=false

cd $(dirname -- "$0")

if $USE_STATIC_DUMP && [ $(which 7z) ]
then
  wget -nc 'http://ks384172.kimsufi.com/dl/lkddb-dump-2012-07-01.7z'
  7z x lkddb-dump-2012-07-01.7z
else
  wget -P download -nv -r -np -nc -l 2 -w 0.1 --random-wait 'http://cateee.net/lkddb/web-lkddb/index.html'
fi
