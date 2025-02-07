BEGIN{
print "awk - looping statements:-"
print "--------------------------"

for(i=0;i<5;i++){
  print "i value:",i
}
print "" # empty line

i=0
while(i<5){
  print "i value:",i
  i++
}
print "" # empty line
i=0
do{
  print "i value:",i
  i++
}while(i<5)
}
