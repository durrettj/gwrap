#!/bin/sh
#Copyright (C) 2016 Jason Edward Durrett jed@jedwarddurrett.com
#
# Usage: gwrap.sh [file or directory]
file=$1
search=null
clear
while [ "$search" != "!q" ]; do
    printf "\n\nEnter search term/phrase or '!q' to exit: "
    read search
    clear
    printf "Results of search:\n\n"
    grep -r "$search" $file | more 
done

