echo -e "ENTER FIRST NAME : \c"echo -e "ENTER MOBILE NUMBER : +91 \c"
read mn
mn_val="^[0-9]{10}$"

read f_n
f_n_val="^[Cap]+[a-z]*$"

echo -e "ENTER LAST NAME : \c"
read l_n
l_n_val="^[Cap]+[a-z]*$"


echo -e "ENTER EMAIL : \c"
read e
e_val="^[abc]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"


echo -e "ENTER MOBILE NUMBER : +91 \c"
read mn
mn_val="^[0-9]{10}$"

echo -e "ENTER PASSWORD : \c"
read pwd


#FIRST NAME

	if ! [[ $f_n =~ $f_n_val ]]
	then
		echo -e "\nINVALID FIRST NAME"
	else
		echo -e "\nFIRST NAME : $f_n"
	fi

#LAST NAME

        if ! [[ $l_n =~ $l_n_val ]]
        then
                echo "INVALID LAST NAME"
        else
                echo "LAST NAME : $l_n"
        fi


#EMAIL

        if ! [[ $e =~ $e_val ]]
        then
                echo "INVALID EMAIL"
        else
                echo "USER EMAIL : $e"
        fi


#MOBILE NUMBER

        if ! [[ $mn =~ $mn_val ]]
        then
                echo "INVALID CONTACT NUMBER"
        else
                echo "USER CONTACT NUMBER : +91 $mn"
        fi


#PASSWORD

        pwd_val=$(($(tr -d '[[:alnum:]]' <<< $pwd | wc -m)-1))

        if ! [[ ${#pwd} -ge 8 && $pwd =~ [[:upper:]] && $pwd =~ [[:lower:]] && $pwd =~ [[:digit:]]  &&  $pwd_val =~ 1  ]]
        then
                echo "INVALID PASSWORD"
        else
                echo "USER PASSWORD IS SAFE WITH US"
        fi
