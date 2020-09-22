function clean_stdin()
{
    while read -e -t 0.1; do : ; done
}

tput civis
while true;
do
	read -N 1
	clean_stdin
	clear
	sh one_cycle.sh
done
tput cnorm

