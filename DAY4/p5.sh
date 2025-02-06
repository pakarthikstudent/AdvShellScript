
used_size=(150GB 100Gb 200Gb 300 G120)

total=0
for var in ${used_size[@]}
do
	s=`echo "$var"|sed -r 's/[a-zA-Z]+//'`
	total=`expr $total + $s`
done
echo "Sum of ${used_size[@]} is: $total GB"
