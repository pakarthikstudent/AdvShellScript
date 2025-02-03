os=`uname`
DATE=`date +%D`
Fname="/etc/passwd"
count=`lsmod|wc -l`

echo "Working kernel name is:$os"
echo "File name:$Fname"
echo "Total no.of loaded kernel modules:$count"
echo "Today:$DATE"
