#!/bin/bash

git log > git_logs_full.txt
git log --pretty=tformat:'%H' > git_logs.txt

while read p; do

    count=$(echo $p | xargs git show --pretty="format:" --name-only | grep $1 | wc -l)

    if [ "$count" -gt "0" ]; then
        #echo $p

        grep -A 3 `echo $p` git_logs_full.txt

        echo $p | xargs git show --pretty="format:" --name-only | grep $1
        echo " "
        echo " "
    fi


done < git_logs.txt