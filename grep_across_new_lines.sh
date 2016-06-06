#!/bin/bash

while read p; do

	grep manu_name_link -A 6 `echo "/home/realtympg/public_html/store/_ws/DownloadFiles/"$p` | grep -ho '>[^<]\{5,100\}<' | sed 's/<//g' | sed 's/>//g' | awk -F"~" -v s=$p '{print s"~"$1}' >> /home/realtympg/public_html/store/_ws/DownloadFiles/manufacturer_output.txt

done < /home/realtympg/public_html/store/_ws/DownloadFiles/all_template_files.txt