

if [ $# -eq 0 ];then
  echo "Usage:Commandline arg is empty"
  exit
fi

if [ "`basename $0`" == "$1" ];then
  echo "Usage:Input file $1 is same as script file"
  exit
fi

if [ "$#" -ge 2 ];then
  echo "Usage:Commandline will allow single input file"
  echo "$0 <filename>"
  exit
fi

if [ -e $1 ];then
	echo "File $1 is exists"
else
	echo "File $1 is not exists"
fi
   
