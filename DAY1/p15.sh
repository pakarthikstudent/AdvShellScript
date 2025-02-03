if ! [ "`whoami`" == "root" ]
then
     echo "Usage: Sorry your not root user"
     exit 
fi

yum -y install at >>/var/log/repo.log 2>&1

if [ $? -eq 0 ];then
	echo "Installation is done"
	systemctl status atd >process.log 2>&1
	if [ $? -ne 0 ];then
		systemctl start atd
		if [ $? -eq 0 ];then
			echo "Success atd is active state"
		else
			echo "atd startup is failed"
		fi
	else
	    echo "Sorry daemon is not active"
	fi
else
	echo "Sorry package at installation is failed"
	echo "Refer /var/log/repo.log file"
	exit
fi	
