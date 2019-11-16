# 03b [SCRIPT]
# Three’s a Charm. Write a script of you choice.

# This script looks for a keyword tag in the first line of each file and colors the output to match the subject PDF.
# To use, be sure to include the keyword in the first line of the file.
# Example:
#	01 [COMMAND]
# to run properly, execute from the root directory with sh scripts/03.sh

RED='\e[38;5;197m'
BLDBLUE='\e[36;1;38m'
BLUE='\e[38;5;38m'
GREEN='\e[38;5;76m'
YELLOW='\e[38;5;220m'
NC='\033[0m'

for file in ./network/*
do
	if head -n 1 $file | grep -q 'COMMAND'
	then printf ${BLUE} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'OUTPUT'
	then printf ${GREEN} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'DEDUCTION'
	then printf ${RED} && head -2 $file && printf ${NC} && tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'SCRIPT'
	then printf ${YELLOW} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	else cat $file
		printf "\n"
	fi

done
for file in ./system/*
do
	if head -n 1 $file | grep -q 'COMMAND'
	then printf ${BLUE} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'OUTPUT'
	then printf ${GREEN} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'DEDUCTION'
	then printf ${RED} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'SCRIPT'
	then printf ${YELLOW} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	else cat $file
	fi

done
for file in ./scripts/*
do
	if head -n 1 $file | grep -q 'COMMAND'
	then printf ${BLUE} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'OUTPUT'
	then printf ${GREEN} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'DEDUCTION'
	then printf ${RED} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	elif head -n 1 $file | grep -q 'SCRIPT'
	then printf ${YELLOW} && head -2 $file && printf ${NC} &&  tail -n +3 $file
		printf "\n"
	
	else cat $file
		printf "\n"
	fi

done
