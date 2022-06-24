
setleds -L +num -caps +scroll

MESSAGE='deleted.png'


while true;
do
	read -N 1 key
	#     bépo               azerty qwerty
	if [[ "$key" == 'x'  ||  "$key" == 'c' ]];
	then
		#red button
		rm $1
		break
	#     bépo qwerty       azerty
	elif [[ "$key" == 'a' || "$key" == 'q' ]];
	then
		#blue button
		MESSAGE='shared.png'
		convert $1 -resize 1280x output.jpg
		FILENAME="output.jpg" ./tg_up
		rm output.jpg
		break
	fi
done

setleds -L +num +caps +scroll

bash ./fbdisp.sh $MESSAGE
read -t 30 -N1 key


setleds -L -num -caps -scroll
