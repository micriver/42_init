# 03a [SCRIPT]
# Three’s a Charm. Write a script of you choice.

# This script pushes your committed changes to the remote of your choice, filling in the commit message with input from the user
# In this case, I have a remote named mirror that has two repo URLs and so it is pushing to both

#!/bin/bash
# git add, prompt for vogosphere and personal github commit message, then push
git add .
# assign user input to desc variable
read -p "Commit description: " desc
# insert desc variable into commit message
git commit -m "$desc"
# push using the name of your remote, in this example, it is "mirror"
git push mirror
# confirm push
echo "You've pushed to both repos successfully!"
