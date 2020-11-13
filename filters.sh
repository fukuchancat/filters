file=`date +'280blocker_adblock_%Y%m.txt'`
url="https://280blocker.net/files/$file"
wget -O $file $url
wget -O ruleset_converter https://github.com/bromite/filters/releases/latest/download/ruleset_converter
./ruleset_converter --input_format=filter-list --output_format=unindexed-ruleset --input_files=$file --output_file=filters.dat
