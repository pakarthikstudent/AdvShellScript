
read -p "Enter a server name:" server

case $server in
UNIX|Unix|unix)  echo "Matched-1" ;;
[Ll]inux)  echo "Matched-2" ;;
[Aa][Ii][xX]) echo "Matched-3" ;;
*)  echo "Not-Matched"
esac
