
Color="\e[31m"
end="\e[0m"

mygrep(){
if [ $# -ne 2 ];then
  echo "Usage $FUNCNAME <Pattern> <inputFile>"
  return 1
fi
while read var
do
    if [[ $var =~ $1 ]];then
	echo -e "$Color $var $end"
    fi
done<$2
}

mygrep sales emp.csv
[ $? -eq 0 ] || echo "search operation is failed"

# like -> grep sales emp.csv
# ---------------------------
