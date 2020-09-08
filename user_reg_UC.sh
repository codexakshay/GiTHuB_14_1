echo -e "ENTER FIRST NAME : \c"
read f_n
f_n_val="^[Cap]+[a-z]*$"

echo -e "ENTER LAST NAME : \c"
read l_n
l_n_val="^[Cap]+[a-z]*$"


#FIRST NAME

	if ! [[ $f_n =~ $f_n_val ]]
	then
		echo "INVALID INPUT"
	else
		echo "FIRST NAME : $f_n"
	fi


#LAST NAME

        if ! [[ $l_n =~ $l_n_val ]]
        then
                echo "INVALID INPUT"
        else
                echo "LAST NAME : $l_n"
        fi
