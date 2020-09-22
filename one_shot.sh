#!/bin/bash
clear
sh fbdisp.sh 3.gif
sleep 1
sh fbdisp.sh 2.gif
sleep 1
sh fbdisp.sh 1.gif
gphoto2 --auto-detect >/dev/null
sleep 1
sh fbdisp.sh flash.gif
gphoto2 --capture-image-and-download --filename $1.jpg
