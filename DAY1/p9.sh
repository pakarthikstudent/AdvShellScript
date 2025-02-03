read -p "Enter a disk partition name:" p1
read -p "Enter $p1 size:" s1

read -p "Enter another disk partition name:" p2
read -p "Enter $p2 size:" s2

total=`expr $s1 + $s2`
echo "----------------
Partition $p1	  Size:$s1
Partition $p2	  Size:$s2
-----------------------------
	Total Size:$total
------------------------------"

