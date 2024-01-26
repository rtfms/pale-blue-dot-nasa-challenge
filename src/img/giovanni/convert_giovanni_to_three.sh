#!/bin/bash
# This script converts all images in this directory from Giovanny format into images suitable for Three.js

for i in *.png
do
  echo "Converting $i"
  convert "$i" -crop 1024x854+13+0 -resize 2048x854 -gravity north -extent 2048x1024  -fuzz 5% -fill lightblue -opaque white "../$i" 
done
