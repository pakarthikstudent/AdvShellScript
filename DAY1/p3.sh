Fname="/etc/passwd"

echo "About $Fname details:-
------------------------------"

ls -l $Fname
echo # Empty 
echo "About $Fname attributes are:-
-------------------------------------"
stat $Fname
