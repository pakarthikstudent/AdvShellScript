read -p "Enter a file name:" fname

if ! [ -f $fname ];then
	echo "Usage:Sorry file $fname is not a reg.file"
	exit
fi

read -p "Enter a search pattern:" key

results=`grep $key $fname`

if [ $? -eq 0 ];then
     echo "Matched Pattern results:-"
     echo #------------------------
     echo "$results"
else
     echo "Usage:Sorry given pattern $key is not matched from $fname file"
fi

