


grep -h --color=always 'commit ' git_logs.txt | sed 's/commit //g' > git_commits.txt  

echo "" > commit_file_list2.txt
echo "" > run_commit_show2.txt
while read p; do
    #echo "git show --pretty=\"format: --name-only \" $p" >> run_commit_show.sh
    echo "$p" >> run_commit_show2.txt
done < git_commits.txt

grep -o '.\{40\}$' run_commit_show2.txt > run_commit_show3.sh
sed -i "" 's/\([a-zA-Z0-9]\{40\}\)/echo \"_________________________________\";echo \"\1\"\; echo \"_________________________________\";git show --pretty=\"format\: \" --name-only \1;echo " ";/g' run_commit_show3.sh

chmod 755 run_commit_show3.sh
./run_commit_show3.sh
./run_commit_show3.sh > commit_file_list2.txt

#cat commit_file_list2.txt | sort | uniq > commit_file_list.txt
