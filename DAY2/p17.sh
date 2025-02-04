pin=1234
c=0

while [ $c -lt 3 ]
do
     c=`expr $c + 1`
     read -p "Enter a pin Number:" PIN
     if [ $pin -eq $PIN ];then
	echo "Success - pin is matched - $c"
	break
     fi
done
if [ $pin -ne $PIN ];then
	echo "Sorry your pin blocked"
fi
