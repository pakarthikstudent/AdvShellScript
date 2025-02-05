
apis=($@)

echo "No of elements from array:${#apis[@]}"
echo "No of elements from cmdline args:$#"

echo $@
echo ${apis[@]}
echo ; sleep 3
apis=(fastAPI $@ Flask Rails)

echo "No of elements from array:${#apis[@]}"
echo "No of elements from cmdline args:$#"

echo $@
echo ${apis[@]}
