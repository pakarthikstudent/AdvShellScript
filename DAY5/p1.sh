awk 'BEGIN{
FS=","
OFS="\t"
print "List of sales emp records:-"
print "-----------------------------"
}
/sales/{print NR,$2,$NF,$NF*0.18}
END{
print "----------------------------"
print "    Thank you  "
print "----------------------------"
}' emp.csv
