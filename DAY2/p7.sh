read -p "Enter a app name:" app

if [ $app == "flask" -o $app == "FLASK" -o $app == "Flask" ]
then
	port=5000
elif [ $app == "Django" ]
then
	port=8080
elif [ $app == "prometheus" ]
then
	port=9090
elif [ $app -eq 123 ]
then
	app="demoApp" ; port=4994
else
	app="testApp"
	port=8000
fi
echo
case $app in
flask|FLASK|Flask) port=5000 ;;
Django) port=8080 ;;
prometheus) port=9090 ;;
123) app="demoApp" ; port=4994 ;;
*) app="testApp"
   port=8000
esac

echo "App name:$app running port:$port"
