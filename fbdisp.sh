#!/bin/bash


RESOLUTION='3840x2160'

convert -resize $RESOLUTION -background black -gravity center -extent $RESOLUTION $1 bgra:/dev/fb0


echo ' '
