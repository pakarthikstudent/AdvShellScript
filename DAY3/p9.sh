
f1(){
   v=10
   echo "from $FUNCNAME Block \$v=$v"
}
echo "Before functionCall from main script \$v=$v"
f1
echo "After functionCall from main script \$v=$v"

echo # empty line
f2(){
   local var=20
   echo "from $FUNCNAME Block \$var=$var"
}
echo "Before functionCall from main script \$var=$var"
f2
echo "After functionCall from main script \$var=$var"
