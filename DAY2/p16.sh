read -p "Enter a input File:" fname

if ! [ -f $fname ]
then
	echo "Usage:Sorry file $fname is not a reg.file"
	exit
fi

read -p "Enter a result file:" wfname

if [ -e $wfname ]
then
	echo "Usage:Sorry file $wfname is already exists"
	exit
fi

while read var
do	
  echo "$var"
done< $fname  >$wfname
