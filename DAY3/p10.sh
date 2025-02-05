
fx(){
   local v=10
   return $v
}
fx
echo "$?"

fx
echo # empty line
echo $? # 0

fx;n=$?
echo # 
echo # 
echo "n value:$n"
