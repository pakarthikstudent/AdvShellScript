while :
do
r=`df -Th /|sed '1d'|awk '{print $4}'|sed -r 's/[A-Za-z]+//g'`
echo $r|awk '{if($1 >3.5){print "Disk Usage is High"
 }else{
 print "Disk Usage is low"
 }
 }'
echo "Disk Usage High - Used size:$r GB"|mail -s "alert" root@example.com
sleep 3600 # 1Hr delay
done
