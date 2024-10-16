#!/usr/bin/env sh

languages=$(printf "csharp c cpp python lua java" | tr ' ' '\n')
core_utils=$(printf "xargs find sed awk grep" | tr ' ' '\n')

selected=$(printf "$languages\n$core_utils" | gum choose)

printf "query: " && read query

if [ $(printf "$languages" | grep "$selected") ]; then
  curl cht.sh/$selected/$(printf "$query" | tr ' ' '+')
else
  curl cht.sh/$selected~$query
fi
