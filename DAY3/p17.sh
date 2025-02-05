conf_sh=(`find /etc -name "*.sh"`)

echo "Total no.of sh files:${#conf_sh[@]}"

if [ ${#conf_sh[@]}  -lt 10 ];then
	for var in ${conf_sh[@]}
	do
		echo "$var"
	done
else
	echo "No.of sh files are more than 10 files"
fi

