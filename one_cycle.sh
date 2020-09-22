clear
sh fbdisp.sh start_screen.png
read -N 1
read -t 0 -n 10000 discard
now=$(date +%F-%H%M%S)
pw=$(pwgen -1)
sh one_shot.sh $now$pw
scp $now$pw.jpg "photos@loutre.info:/home/photos/public/"
sh screen.sh $now$pw.jpg "https://loutre.info/photos/$now$pw.jpg"
