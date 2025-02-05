

read -p "Enter a URL:" url

echo $url|grep -qE "^(https|http).*(org|com)$"
if [ $? -eq 0 ];then
	echo "Valid URL"
else
	echo "Not-Matched"
fi

