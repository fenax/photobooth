#!/bin/bash

convert -resize 1920x1080 -background black -gravity center -extent 1920x1080 $1 bgra:/dev/fb0
