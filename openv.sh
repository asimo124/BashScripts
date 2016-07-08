###
#
# Opens a list of files in vim (tabbed), from start index to last index (1-based),
# or from 1 to end index if pass 1 argument
#
##

echo 'test1.txt' | xargs grep -hor '\.\/[\/a-zA-Z0-9\.]\{1,300\}' > test2.txt
cat test2.txt > test1.txt
unlink test2.txt

i=1
args=" "
var2_1=$2 + 1
while read p; do
    if [ -z "$2" ]
    then
        args="$args $p"
        x=1
    else
        if [ "$i" -ge "$1" ]
        then
            x = 1
            if [ "$i" -le "$2" ]
            then
                args="$args $p"
            fi;
        fi;
        if [ "$i" -gt "$var2_1" ]
        then
            break;
        fi;
    fi;
    ((i+=1))
    if [ -z "$2" ]
    then
        z = 1
        if [ "$i" -gt "$1" ]
        then
            break
        fi;
    fi;
done < test1.txt
