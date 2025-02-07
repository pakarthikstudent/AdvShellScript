
echo $1 $2 $3
echo $0 # working script file name

f1(){
	echo $1 $2 $3
	echo $0 # working script filename
}
f2(){
	echo $1 $2 $3|awk '{OFS="\t";print $1,$2,$NF}'
	echo $1 $2 $3|awk '{print NR,$0}'
}
f1 10 20 30
f2 DATA1 DATA2 DATA3 DATA4 DATA5

