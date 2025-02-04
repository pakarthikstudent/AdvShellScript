

opt_string="abc"

while getopts $opt_string opt
do
	case $opt in
	a)  echo "Option -a was invoked" ;;
	b)  echo "Option -b was invoked" ;;
	c)  echo "Option -c was invoked" ;;
        *)  echo "Invalid option"
	esac
done
