read -p "Enter a shell name:" shvar

if [ "$shvar" == "bash" ]
then
	fname="/etc/bashrc"
elif [ "$shvar" == "ksh" ]
then
	fname="/etc/kshrc"
elif [ "$shvar" == "csh" ]
then
	fname="/etc/cshrc"
else
	shvar="/bin/nologin"
	fname="/etc/profile"
fi

echo "Shell name:$shvar  Profile filename:$fname"

