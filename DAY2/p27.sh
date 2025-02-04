
echo $@
echo 
echo $*

for var in "$@"
do
 echo "--->$var"
done
echo
for var in "$*"
do
echo "==>$var"
done
