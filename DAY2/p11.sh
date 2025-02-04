
select var in files process fsmount memory quit
do
	case $var in 
	files)  echo "List of files:-"
		ls -l
		echo "Exit from file menu"
		;;
	process) echo "Current process:-"
		 ps 
		 echo "Exit from process block"
		;;
	fsmount) echo "Mounted File system:-"
		 df -Th
		 ;;
	memory)  echo "Current memory report:-"
		 free 
		 ;;
	quit)  echo "Thank you!!!" ; break ;;
	*)  echo "Sorry your input is not matched"
	esac
done
