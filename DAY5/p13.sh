
echo "This is $0 script - PID:$$ Parent Process ID:$PPID"

result=$(/usr/bin/python3<<Abc
import sys
import os
print("execution of python version",sys.version)
print("python PID:",os.getpid(),"Python Parent ID:",os.getppid())
print("exit from python process")
Abc)
if [ -z "$result" ];then
	echo "There is no result from python"
else
	echo "$result"
fi
echo # empty line
sleep 3
echo "Exit from $0 script - PID:$$ Parent Process ID:$PPID"
