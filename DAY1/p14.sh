read -p "Enter a linux command:" cmd
$cmd >result.log 2>&1

if [ $? -eq 0 ];then
   echo "Yes - $cmd command execution is success"
else
   echo "No - $cmd command execution is failed"
   echo "Refer result.log file"
fi

