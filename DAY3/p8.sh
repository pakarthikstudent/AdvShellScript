
echo "OK"

if [ -d demoABC ] ;then
   echo "Yes"
   exit 0
else
   echo "demoABC is not exists"
   exit 1
fi
