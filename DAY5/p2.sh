
echo "This is bash script PID:$$  PPID:$PPID"
sleep 3
echo # empty line

awk 'BEGIN{system("ps -f")}'

echo # empty line
sleep 3
echo "This is bash script PID:$$  PPID:$PPID"
