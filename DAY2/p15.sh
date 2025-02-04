i=0
while [ $i -lt 3 ]
do
   ps -f   >>process.log
   sleep 1  
   uptime  >>LB.log
   sleep 2
   df -Th  >>fs.log
   sleep 1
   free -m >>memory.log
   i=`expr $i + 1`
done

