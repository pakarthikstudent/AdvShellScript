
count=0

while read var
do
   count=`expr $count + 1`
   echo "$count  $var"
done<emp.csv
