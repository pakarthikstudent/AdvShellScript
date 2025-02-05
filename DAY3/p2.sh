hosts=() # empty array

echo "No of items: ${#hosts[*]}"

c=0
while [ $c -lt 5 ]
do
       read -p "Enter a hostname:" h  # read a hostname from <STDIN>
       hosts[$c]=$h    # adding new data to an existing array
       c=`expr $c + 1`
done
echo "List of host details:-"

for var in ${hosts[*]}
do
     echo "$var"
done
echo "No of items: ${#hosts[*]}"

