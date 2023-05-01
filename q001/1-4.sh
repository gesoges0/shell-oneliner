grep '\.exe$' ../shellgei160/qdata/1/files.txt
cat ../shellgei160/qdata/1/files.txt | grep '\.exe$'
cat ../shellgei160/qdata/1/files.txt | sed -n '/\.exe$/p'
cat ../shellgei160/qdata/1/files.txt | awk '/\.exe$/'
cat ../shellgei160/qdata/1/files.txt | perl -ne '/\.exe$/ and print'
