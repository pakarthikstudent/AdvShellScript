
read -p "Enter a file name:" fname

if [ -e $fname ]
then
     echo "Yes input file:$fname is exists"
     file $fname
else
     echo "Sorry file:$fname is not exists"
fi

