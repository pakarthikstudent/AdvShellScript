f1(){
  echo "This is f1 block"
  ls -l
  echo "Exit from f1 block"
}
process(){
   echo "This is $FUNCNAME block"
   ps -f
   echo "Total no.of process count:`ps -e|wc -l`"
   echo "Exit from $FUNCNAME block"
}
fs(){
   echo "Mounted file system:"
   df -Th
   echo "Exit from $FUNCNAME block"
}
f1 # 1st call
sleep 2
process # 2nd call
sleep 2
fs # 3rd call
echo "Exit from $0 script"
