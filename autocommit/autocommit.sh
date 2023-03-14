#!/usr/bin/env bash

# This script takes a list of paths to git repos
# and adds, commits and pushes them to their
# respective upstreams with 'autocommit' as
# the commit message. Useful for automatic
# backups.

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")

cmsg="$1"
[ -z "$1" ] && cmsg="$(curl -s "https://raw.githubusercontent.com/ngerakines/commitment/master/commit_messages.txt" | shuf -n1)" && desc="an automated commit"

while read p
do
	tput setaf 4
	printf "%$(tput cols)s\n" |tr " " "="

	tput setaf 6
	printf "%$(tput cols)s\n" |tr " " "-"
	echo "Processing \`$p\`"
	printf "%$(tput cols)s\n" |tr " " "-"

	tput setaf 7
	bash -c "cd $p && git add . && git commit -m \" $cmsg \" -m \" $desc \" && git push"

	tput setaf 2
	printf "%$(tput cols)s\n" |tr " " "-"
	echo "Processed \`$p\`"
	printf "%$(tput cols)s\n" |tr " " "-"
    
done < $HOME/.scripts/autocommit/autocommit.txt

tput setaf 4
printf "%$(tput cols)s\n" |tr " " "="


