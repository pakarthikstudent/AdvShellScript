
LB1=1.45
LB2=0.26
echo $LB1 $LB2|awk '{if($1 >$2){
 print "OK"
}else{
 print "Not-Matched"
}
}'
