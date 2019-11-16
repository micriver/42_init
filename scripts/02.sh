# 02 [SCRIPT] Write a script which delete an ACTIVE user on the VM
users
read -p "Which user? " user
if [ $user != 'root' ] 
then
	userdel -f $user
	echo "$user has been deleted."
else
	echo "the user is root!"
fi

# The -f (--force) flag will forcefully remove the user account, even if the user is still logged in or if there are running processes which belong to this user.
