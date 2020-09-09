#REGEX

f_n_val="^[Cap]+[a-z]*$"

l_n_val="^[Cap]+[a-z]*$"

e_val="^[a-z]+[0-9]*([-_+.][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([,]{1})*([.][a-z]{2})*$"

mn_val="^[0-9]{10}$"

echo -e "\n    --REGEX & VALIDATION--\n"
echo -e "\n1. USER PROFILE REGISTRATION"
echo -e "\n2. SEPERATE EMAIL VALIDATION"

echo -e "\nENTER CHOICE : \c"
read ch

if [ $ch -eq 1 ]
then
#USER PROFILE REGISTERATION

#READING PROFILE DATA 

	echo -e "\nENTER FIRST NAME : \c"
	read f_n

	echo -e "\nENTER LAST NAME : \c"
        read l_n

	echo -e "\nENTER EMAIL : \c"
        read e

	echo -e "\nENTER MOBILE NUMBER : +91 \c"
        read mn

	echo -e "\nENTER PASSWORD : \c"
        read pwd


#USER DATA VALIDATION

	echo -e "\n\n   --ENTERED DATA--\n"

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
                echo -e "\nINVALID LAST NAME"
        else
                echo -e "\nLAST NAME : $l_n"
        fi


#EMAIL


        if ! [[ $e =~ $e_val ]]
        then
                echo -e "\nINVALID EMAIL"
        else
                echo -e "\nUSER EMAIL : $e"
        fi


#MOBILE NUMBER


        if ! [[ $mn =~ $mn_val ]]
        then
                echo -e "\nINVALID CONTACT NUMBER"
        else
                echo -e "\nUSER CONTACT NUMBER : +91 $mn"
        fi


#PASSWORD

	pwd_val=$(($(tr -d '[[:alnum:]]' <<< $pwd | wc -m)-1))

        if ! [[ ${#pwd} -ge 8 && $pwd =~ [[:upper:]] && $pwd =~ [[:lower:]] && $pwd =~ [[:digit:]]  &&  $pwd_val =~ 1  ]]
        then
                echo -e "\nINVALID PASSWORD"
        else
                echo -e "\nUSER PASSWORD IS SAFE WITH US"
        fi

else

#SEPERATE CHECK

echo -e "\n\tEMAIL VALIDATION LIST\n"
	
	echo -e	"\n  • 1. abc@yahoo.com"
	echo -e	"\n  • 2. abc-100@yahoo.com"
	echo -e	"\n  • 3. abc.100@yahoo.com"
	echo -e	"\n  • 4. abc111@abc.com"
	echo -e	"\n  • 5. abc-100@abc.net"
	echo -e	"\n  • 6. abc.100@abc.com.au"
	echo -e	"\n  • 7. abc@1.com"
	echo -e	"\n  • 8. abc@gmail.com.com"
	echo -e	"\n  • 9. abc+100@gmail.com"
		
	echo -e "\nENTER YOUR CHOICE : \c"
	read ch1
		case $ch1 in
				1)
					e="abc@yahoo.com"
					if ! [[ $e =~ $e_val ]]
       					then
                				echo -e "\nINVALID EMAIL : $e"
        				else
                				echo -e "\nVALID EMAIL : $e"
        				fi
					;;
				2)
  					e="abc-100@yahoo.com"
                                        if ! [[ $e =~ $e_val ]]
                                        then
                                                echo -e "\nINVALID EMAIL : $e"
                                        else
                                                echo -e "\nVALID EMAIL : $e"
                                        fi
                                        ;;

				3)
					e="abc.100@yahoo.com"
                                        if ! [[ $e =~ $e_val ]]
                                        then
                                                echo -e "\nINVALID EMAIL : $e"
                                        else
                                                echo -e "\nVALID EMAIL : $e"
                                        fi
                                        ;;
				4)
					e="abc111@abc.com"
                                        if ! [[ $e =~ $e_val ]]
                                        then
                                                echo -e "\nINVALID EMAIL : $e"
                                        else
                                                echo -e "\nVALID EMAIL : $e"
                                        fi
                                        ;;
				5)
					e="abc-100@abc.net"
                                        if ! [[ $e =~ $e_val ]]
                                        then
                                                echo -e "\nINVALID EMAIL : $e"
                                        else
                                                echo -e "\nVALID EMAIL : $e"
                                        fi
                                        ;;
				6)
					e="abc.100@abc.com.au"
                                        if ! [[ $e =~ $e_val ]]
                                        then
                                                echo -e "\nINVALID EMAIL : $e"
                                        else
                                                echo -e "\nVALID EMAIL : $e"
                                        fi
                                        ;;
				7)
					e="abc@1.com"
                                        if ! [[ $e =~ $e_val ]]
                                        then
                                                echo -e "\nINVALID EMAIL : $e"
                                        else
                                                echo -e "\nVALID EMAIL : $e"
                                        fi
                                        ;;
				8)
					e="abc@gmail.com.com"
                                        if ! [[ $e =~ $e_val ]]
                                        then
                                                echo -e "\nINVALID EMAIL : $e"
                                        else
                                                echo -e "\nVALID EMAIL : $e"
                                        fi
                                        ;;
				9)
					e="abc+100@gmail.com"
                                        if ! [[ $e =~ $e_val ]]
                                        then
                                                echo -e "\nINVALID EMAIL : $e"
                                        else
                                                echo -e "\nVALID EMAIL : $e"
                                        fi
                                        ;;

				*)
					echo -e "\nENTER VALID CHOICE (1-9)"
					;;
			esac
fi
