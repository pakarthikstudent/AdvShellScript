
v="mon tue wed thu fri"

echo $v
for var in $v
do
   echo $var
done
for var in "$v"
do
   echo $var
done
