#!/bin/bash

num_cpu=$(nproc)

if [ ! $1 ]; then
	printf "Enter how many cores your program needs:\n"
	read min_cpu
else
	min_cpu=$1
fi

red=$(tput setaf 1)
green=$(tput setaf 2)
normal=$(tput sgr0)

if [ $num_cpu -lt $min_cpu ]; then
	printf "${red}ERROR: Not enough CPU cores! (Needed: %d, Available: %d)${normal}\n" "$min_cpu" "$num_cpu"
else
	printf "${green}OK${normal}\n"
fi

printf "new commands and their usage:\n'read': if the user does not enter a command line argument, then the program just asks them instead of quitting and showing proper usage.\n'printf': used to colour code the result of the comparison and for easier usage of variables in text.\n"

