echo "List of config files from /etc directory"

for var in `ls /etc/*.conf`
do
echo "File name:$var"
ls -l $var
sleep 1
done
