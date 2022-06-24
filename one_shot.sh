#!/bin/bash
clear
bash fbdisp.sh 3.png
sleep 1
bash fbdisp.sh 2.png
sleep 1
bash fbdisp.sh 1.png
gphoto2 --auto-detect >/dev/null
sleep 1
bash fbdisp.sh flash.png
gphoto2 --capture-image-and-download --filename $1.jpg
