
read -p "Enter a file name:" fname

if [ -e $fname ]
then
     if [ -f $fname ]
     then
	  echo "Yes Given Input file $fname is a reg.file"
	  ls -l $fname
     elif [ -d $fname ]
     then
	  echo "Input file $fname is a directory file"
	  ls -ld $fname
     else
         echo "Yes input file:$fname is exists"
         file $fname
     fi
else
     echo "Sorry file:$fname is not exists"
fi

