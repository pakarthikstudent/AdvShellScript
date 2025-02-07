BEGIN{
port = 5000
if(port >= 5000){
	print "True block"
	app = "Flask"
}else{
	print "False block"
	app = "TestApp"
}
print "App name is:",app,"Running port number:",port
}
