# 01 [SCRIPT] Write a script which displays only the login, UID and Path of each entry of the /etc/passwd file.
awk -F: '{printf $1,$3,$6}' /etc/passwd

# The awk command searches each line in a document and using various kinds and delimiters, separates data into different formats according to the provided criteria
