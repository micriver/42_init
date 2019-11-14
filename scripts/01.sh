# 03 [SCRIPT] Write a script which displays only the login, UID and Path of each entry of the /etc/passwd file.
awk -F: '{printf $1,$3,$6}' /etc/passwd

# The awk command searches each line in a document and using various kinds and delimiters, separates data into different formats according to the provided criteria

# grep -w "$1" /etc/passwd | while IFS=':' read LOGIN UID PATH
# do
# 	echo -e '\t\tLogin : $LOGIN
# 	UID : $UID
# 	PATH : $PATH'
# done
