

create_new_directory()
{
    # to create new directory

    if [ $# -eq 0 ];then
      echo "Usage: argument is missing"
      echo "$FUNCNAME <directory>"
      exit
    fi
    [ -d $1 ] || mkdir $1
    if [ $? -eq 0 ];then
	echo "Directory $1 is created"
    else
        echo "Directory $1 creation is failed"
    fi  
}
#create_new_directory Demo

Arr=(Demo1 Demo2 Demo3 Demo4)

for var in ${Arr[@]}
do
     create_new_directory $var # function call with args
done #################### ####

