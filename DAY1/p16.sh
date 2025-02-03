if ! [ "`whoami`" == "root" ]
then
     echo "Usage: Sorry your not root user"
     exit 
fi
rpm -qa|grep -wq "at"
if [ $? -eq 0 ];then
	echo "Package at is already exists/installed"
	exit
else
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
fi
