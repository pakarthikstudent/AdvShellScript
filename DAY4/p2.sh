
Color="\e[31m"
end="\e[0m"
while read var
do
    if [[ $var =~ sales ]];then
	echo -e "$Color $var $end"
    fi
done<emp.csv

