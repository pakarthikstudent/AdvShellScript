

f(){
    t=0
    for var in $@
    do
	t=`expr $var + $t`
    done
}

select menu in total used free quit
do
	case $menu in
	total)  T=(`free -m|sed '1d'|awk '{print $2}'`)
		f ${T[@]} # function call with args
		echo "Total Memory:$t MB"
		;;	
	used) U=(`free -m|sed '1d'|awk '{print $3}'`)
	      f ${U[@]}
	      echo "Total Used Memory:$t MB"
		;;
	free) F=(`free -m|sed '1d'|awk '{print $4}'`)
	      f ${F[@]}
	      echo "Total Free Memory:$t MB"
		;;
	quit) echo "Thank you!!!" ;break ;;
	*) echo "Invalid Choice"
	   echo "Press Enter-Key"
	esac
done
