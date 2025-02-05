
nameTest(){
   if [ $1 == "userA" -o $1 == "USERA" ];then
	return 0
   else
	return 1
   fi
}
read -p "Enter a username:" name

nameTest $name
if [ $? -eq 0 ];then
	echo "Login name is Success"
else
	echo "Login name is not matched"
fi

