
if [ $# -eq 0 ];then
  echo "Usage:Commandline argument is empty"
  exit
fi

if [ $# -ne 2 ];then
  echo "Usage:Commandline args allows two inputs"
  exit
fi

expr $1 + $2
