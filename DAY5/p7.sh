usage(){
if [ $# -ne 1 ];then
	echo "Usage:Pass inventory file"
	echo "$0 <inventoryFile>"
	exit
fi
}
fx(){
usage $1
awk 'BEGIN{
FS=":"
}
{
split($2,Qty,",")
total=0
for(x in Qty){
  total=total+Qty[x]
}
print "ItemCode:",$1,"Total Sales count:",total
}
END{
print "----------Thank you!!!---------"
}' $1 # function call argument
}
usage $1
fx $1 # from commandline argument

