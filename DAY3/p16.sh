
Disk_Size=(120 100 150 200 250)


total=0
for var in ${Disk_Size[@]}
do
    total=`expr $total + $var`
done

echo "Sum of Disk Size:$total"
