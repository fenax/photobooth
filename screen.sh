rm montage.jpg
rm qrcode.png

#qrencode $2 -o qrcode.png

magick -verbose -size 1920x1080 xc:white -draw "image SrcOver 0,0 1920,1080 'preview.png'
					image SrcOver 460,191 999,562 '$1'" montage.jpg

bash fbdisp.sh montage.jpg

