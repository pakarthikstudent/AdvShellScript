read -p "Enter a shell name:" shvar

if [ "$shvar" == "bash" ]
then
	read -p "Enter a app name:" app
	if [ "$app" == "Flask" -o "$app" == "Django" ]
	then
		read -p "Enter a port number:" port
		if [ $port -gt 500 -a $port -lt 600 ]
		then
			web_app="$app:$port"
			echo "Web URL is:$web_app"
		else
			echo "Sorry $port is not matched"
		fi
	else
		echo "Sorry your input app $app is not matched"
	fi
else
	echo "Sorry your input shell $shvar is not a bash"
fi
