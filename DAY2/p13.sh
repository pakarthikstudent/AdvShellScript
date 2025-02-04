
i=0
while [ $i -lt 5 ]
do
    uptime
    sleep 1
    ps -f
    sleep 1
    i=`expr $i + 1`
done >r1.log
