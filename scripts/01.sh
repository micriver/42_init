# 03 [SCRIPT] Write a script which displays only the login, UID and Path of each entry of the /etc/passwd file.
grep -w "$1" /etc/passwd | while IFS=':' read LOGIN UID PATH
do
	echo -e '\t\tLogin : $LOGIN
	UID : $UID
	PATH : $PATH'
done
