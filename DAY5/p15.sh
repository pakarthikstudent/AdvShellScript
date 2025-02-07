
DBFile="products.db"
va=104
vb="prodD"
vc="4000"
r=`sqlite3 $DBFile<<Abc
create table if not exists prod(id INTEGER,pname TEXT,pcost INTEGER);
insert into prod(id,pname,pcost) values(105,"prodE",5000);
insert into prod(id,pname,pcost) values($va,'$vb',$vc);
select *from prod;
Abc`

if [ -z "$r" ];then
	echo "Empty record"
else
	echo "$r"
fi

