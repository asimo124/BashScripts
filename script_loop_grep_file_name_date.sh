#!/bin/bash

date2=$(date +%Y%m%d%H)

for filename in /home/jsrc/public_html/Services/Admin/WorkOrder/PhaseTemplates/PrintWorkOrders/*.rtf; do
    use_filename=$(printf '%s' "$filename" | sed 's/\-/\./g')

    count_file=$(grep "$use_filename" /home/jsrc/public_html/Services/Admin/WorkOrder/PhaseTemplates/PrintWorkOrders/files_keep_"$date2".txt | wc -l)

    if [ ${count_file} -gt 0 ]
    then
        x="1"
    else
        rm -rf "$filename"
    fi
done
