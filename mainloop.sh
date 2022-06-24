function clean_stdin()
{
    while read -e -t 0.1; do : ; done
}

tput civis
while true;
do
	setleds -L -num +caps -scroll
	bash fbdisp.sh start.png
	read -N 1
	clean_stdin
	clear
	setleds -L -num -caps -scroll
	bash one_cycle_tg.sh
done
tput cnorm

