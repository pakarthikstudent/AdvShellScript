
DB="emp.db"

f1(){
sqlite3 $DB<<EOF
create table if not exists emptable(eid INT,ename TEXT,edept TEXT,ecity TEXT,ecost INT);
EOF
}
f2(){
sqlite3 $DB<<EOF
 insert into emptable(eid,ename,edept,ecity,ecost) values($1,'$2','$3','$4',$5);
EOF
}
f3(){
r=`sqlite3 $DB<<EOF
select *from emptable where ecost >5000;
EOF`
if [ -z "$r" ];then
	echo "There is no record"
else
	echo "$r"
fi
}
f1 # create table
while read var
do
  va=`echo $var|cut -d, -f 1`
  vb=`echo $var|cut -d, -f 2`
  vc=`echo $var|cut -d, -f 3`
  vd=`echo $var|cut -d, -f 4`
  ve=`echo $var|cut -d, -f 5`
  f2 $va $vb $vc $vd $ve # function call with args
done<emp.csv
f3
