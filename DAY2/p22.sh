
if ! [ `whoami` == "root" ]
then
   echo "Usage:Sorry your not root user"
   exit
fi

while read var
do
    rpm -q $var >>r1.log 2>&1
    if [ $? -eq 0 ];then
	 echo "Package $var already installed"
	 echo "About $var package details:-"
	 rpm -qi $var
	 echo # empty line
	 sleep 1
    else
	 yum -y install $var >>r2.log 2>&1
	 if [ $? -eq 0 ];then
		echo "Package $var installation is done"
	 else
		echo "Package $var installation is failed"
		echo "Refer r2.log file"
	 fi
    fi
done<packages.txt
