
echo "Current Hostname:`hostname`"
echo "CPU Loadbalance:-"
uptime

r=`ssh example<<Abc
 hostname
 uptime
 uname -a
Abc`

echo "$r"
	
