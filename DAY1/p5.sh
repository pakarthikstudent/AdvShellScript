
read -p "Enter a filename:" f1
read -p "Enter $f1 size:" s1

read -p "Enter a filename:" f2
read -p "Enter $f2 size:" s2

total=`expr $s1 + $s2`

echo "File name:$f1  Size:$s1
File name:$f2	Size:$s2
---------------------------------
Total File Size:$total 
---------------------------------"

