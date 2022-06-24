rm montage.jpg
rm qrcode.png

#qrencode "https://t.me/Fluufff" -o qrcode.png

#convert -verbose -size 1920x1080 xc:white -draw "image SrcOver 0,0 1620,1080 '$1'
#					image SrcOver 1620,390 300,300 'qrcode.png'" montage.jpg

convert -verbose -size 1920x1080 xc:white -draw "image SrcOver 0,0 1920,1080 'preview.png'
					image SrcOver 460,191 999,562 '$1'" montage.jpg


bash fbdisp.sh montage.jpg

