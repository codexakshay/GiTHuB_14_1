echo -e "ENTER FIRST NAME : \c"
read f_n
f_n_val="^[Cap]+[a-z]*$"

	if ! [[ $f_n =~ $f_n_val ]]
	then
		echo "INVALID INPUT"
	else
		echo "FIRST NAME : $f_n"
	fi
