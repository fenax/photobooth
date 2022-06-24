clear
#read -N 1
#read -t 0 -n 10000 discard
now=$(date +%F-%H%M%S)
pw=$(pwgen -1)
bash one_shot.sh $now$pw
#scp $now$pw.jpg "photos@loutre.info:/home/photos/public/"

bash screen_tg.sh $now$pw.jpg
bash telegram_upload.sh $now$pw.jpg
