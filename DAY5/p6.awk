BEGIN{
 os[10] = "unix"
 os[20] = "Linux"
 os[30] = "minix"
 os[40] = "aix"
 os[50] = "Sunos"
 
 #print os[10]
 #print os[20]

 for(x in os){
	print x,os[x]
 }
}

