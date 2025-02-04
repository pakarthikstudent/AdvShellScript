
echo "List of files:-"
echo "---------------------"
count=0
for var in `ls p*`
do   
      count=`expr $count + 1`
      echo "$count $var"
done
