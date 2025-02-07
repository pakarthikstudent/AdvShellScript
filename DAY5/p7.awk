
BEGIN{
s="root:x:bin:bash"
print "Total no.of chars:",length(s)

split(s,arr,":")
for(x in arr){
    print arr[x]
}
print "Total no.of item:",length(arr)
}

