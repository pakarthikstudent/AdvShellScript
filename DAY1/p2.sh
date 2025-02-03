os=`uname`
DATE=`date +%D`
Fname="/etc/passwd"
count=`lsmod|wc -l`

echo "Working kernel name is:$os
File name:$Fname
Total no.of loaded kernel modules:$count
----------------------------------------
Today:$DATE
----------------------------------------"

