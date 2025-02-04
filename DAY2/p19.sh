
while read var
do
   echo "command:$var
   Results:`$var`"
done<cmds.txt >r1.log 2>&1


