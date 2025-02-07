
LB1=1.45
LB2=0.26
rv=`echo $LB1 $LB2|awk '{if($1 >$2){
 print "0"
}else{
 print "1"
}
}'`

if [ $rv -eq 0 ];then
	echo "LB1 is High"
else
	echo "LB2 is High"
fi
