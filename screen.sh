rm montage.jpg
rm qrcode.png

qrencode $2 -o qrcode.png

magick -verbose -size 1920x1080 xc:white -draw "image SrcOver 0,0 1620,1080 '$1'
					image SrcOver 1620,390 300,300 'qrcode.png'" montage.jpg

sh fbdisp.sh montage.jpg

