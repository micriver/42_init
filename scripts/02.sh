# 02 [SCRIPT] Write a script which delete an ACTIVE user on the VM
users | $USER 
if [ $1 !root ]
	userdel -f 

