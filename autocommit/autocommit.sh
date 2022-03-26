#!/usr/bin/env sh

# This script takes a list of paths to git repos
# and adds, commits and pushes them to their
# respective upstreams with 'autocommit' as
# the commit message. Useful for automatic
# backups.

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")

cmsg="$1"
[ -z "$1" ] && cmsg="autocommit"

for i in $(cat "$SCRIPT_DIR/autocommit.txt")
do
	tput setaf 4
	printf "%$(tput cols)s\n" |tr " " "="

	tput setaf 6
	printf "%$(tput cols)s\n" |tr " " "-"
	echo "Processing \`$i\`"
	printf "%$(tput cols)s\n" |tr " " "-"

	tput setaf 7
	cd "$HOME"
	cd "$i"
	git add .
	git commit -m "$cmsg"
	git push

	tput setaf 2
	printf "%$(tput cols)s\n" |tr " " "-"
	echo "Processed \`$i\`"
	printf "%$(tput cols)s\n" |tr " " "-"

done

tput setaf 4
printf '%32s\n' |tr " " "="
