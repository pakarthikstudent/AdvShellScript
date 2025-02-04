read -p "Enter a file name:" fname

if ! [ -f $fname ];then
	echo "Usage:Sorry file $fname is not a reg.file"
	exit
fi

read -p "Enter a search pattern:" key

grep $key $fname

if [ $? -ne 0 ];then
     echo "Usage:Sorry given pattern $key is not matched from $fname file"
fi

