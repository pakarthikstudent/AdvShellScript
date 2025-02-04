
c=0
while [ $c -lt 5 ]
do
	c=`expr $c + 1`
	
	read -p "Enter a login name:" name
	if [ "$name" == "userA" ];then
		echo "Login is matched"
		break # exit from loop
	else
		echo "Try-Again"
	fi	
done

