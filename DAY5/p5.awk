
BEGIN{
 arr[10] = "data1"
arr[15] = "data2"
arr[50] = "data3"
arr["abc"] = 150

 print arr[10]
 print arr[15]
 print arr[50]
 print arr["abc"]
 print "-->",arr["ABC"]
 delete arr[50]
 print "-->",arr[50]
}
