echo -e "ENTER FIRST NAME : \c"
read f_n
f_n_val="^[Cap]+[a-z]*$"

echo -e "ENTER LAST NAME : \c"
read l_n
l_n_val="^[Cap]+[a-z]*$"


echo -e "ENTER EMAIL : \c"
read e
e_val="^[abc]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"

#FIRST NAME

        if ! [[ $f_n =~ $f_n_val ]]
        then
                echo -e "\nINVALID INPUT"
        else
                echo -e "\nFIRST NAME : $f_n"
        fi


#LAST NAME

        if ! [[ $l_n =~ $l_n_val ]]
        then
                echo "INVALID INPUT"
        else
                echo "LAST NAME : $l_n"
        fi


#EMAIL

        if ! [[ $e =~ $e_val ]]
        then
                echo "INVALID INPUT"
        else
                echo "USER EMAIL : $e"
        fi
