
# git log --pretty=tformat:'%H' > git_logs.txt

while read p; do

    count=$(echo $p | xargs git show --pretty="format:" --name-only | grep $1 | wc -l)

    if [ "$count" -gt "0" ]; then
        echo $p
        echo $p | xargs git show --pretty="format:" --name-only | grep $1
        echo " "
    fi


done < git_logs.txt
