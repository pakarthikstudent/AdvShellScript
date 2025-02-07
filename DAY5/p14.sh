
DBFile="products.db"

r=`sqlite3 $DBFile<<Abc
create table if not exists prod(id INTEGER,pname TEXT,pcost INTEGER);
insert into prod(id,pname,pcost) values(101,"prodA",1000);
insert into prod(id,pname,pcost) values(102,"prodB",2000);
insert into prod(id,pname,pcost) values(103,"prodC",3000);
select *from prod;
Abc`

if [ -z "$r" ];then
	echo "Empty record"
else
	echo "$r"
fi

