while read p; do

    grep -hor 'property..og.url. content..[^\s]\{1,100\}.html' `echo $p`  | grep -ho '\-[^\-]\{1,30\}.html' | sed 's/\-//g' | sed 's/.html//g' | awk -v s=$p '{print s"~"$1}'
done < list_all_files.txt






