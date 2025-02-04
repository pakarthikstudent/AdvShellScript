read -p "Enter a app name:" app

case $app in
flask) port=5000 ;;
Django) port=8080 ;;
prometheus) port=9090 ;;
*) app="testApp"
   port=8000
esac
echo "App name:$app running port:$port"
