

	read -p "Enter any single digit <or> two digits:" n
	echo $n | grep -qE "^[0-9]$|^[0-9][0-9]$"
	if [ $? -eq 0 ];then
	  echo "Valid"
        else
          echo "Invalid"
 	fi
