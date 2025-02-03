read -p "Enter a shell name:" shvar

if [ "$shvar" == "bash" ]
then
	read -p "Enter a app name:" app
	read -p "Enter a port number:" port
	web_app="$app:$port"
	echo "Web URL is:$web_app"
else
	echo "Sorry your input shell $shvar is not a bash"
fi
