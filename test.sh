read -N 1 var
if  [ "$var" = "^[[5~" ]
then
    echo "PREV"
else
    if [ "$var" = "^[[6~" ]
    then
	    echo "NEXT"
    else
        echo "NO...$var..."
LC_CTYPE=C printf '%d' "'$var"

    fi
fi
