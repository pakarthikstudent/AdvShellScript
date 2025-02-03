
read -p "Enter a port number:" port

if [ $port -gt 500 ]
then
   echo "Valid - input port $port is above 500"
fi

read -p "Enter a app name:" app
if [ "$app" == "Flask" ]
then
   echo "Valid-Yes Input App is Flask"
fi


