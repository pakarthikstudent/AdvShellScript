
read -p "Enter a IP Address:" IP
if [ $IP ]
then
	echo "About $IP ping status report:-"
	ping -c 3 $IP
else
	echo "Sorry your input is missing."
	exit # exit from script
fi
