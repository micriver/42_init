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
