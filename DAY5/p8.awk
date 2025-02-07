BEGIN{
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
}
