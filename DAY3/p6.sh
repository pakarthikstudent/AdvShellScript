echo "from commandline args:-"
echo $1 $2 $3
echo $#
echo $@
############# from commandline args
sleep 5 ; echo 
f1(){
 echo "This is $FUNCNAME block"
 echo "1st arg:$1 2nd arg:$2 3rd arg:$3"
 echo "Total no.of args:$#"
 echo "List of all:$@"
 echo "Exit from $FUNCNAME Block"
}

f2(){
 echo "This is $FUNCNAME block"
 echo "1st arg:$1 2nd arg:$2 3rd arg:$3"
 echo "Total no.of args:$#"
 echo "List of all:$@"
 echo "Exit from $FUNCNAME Block"
}
f1 10 20 30 40 50 # function call with args
sleep 2
f2 D1 D2 D3 D4 D5 D6 D7 # function call with args

echo "exit from $0 script"
