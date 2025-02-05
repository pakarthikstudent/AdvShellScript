
read_conf_scripts(){
conf_sh=(`find /etc -name "*.sh"`)

for var in ${conf_sh[@]}
do
	cat -n "$var"|less
done
}

