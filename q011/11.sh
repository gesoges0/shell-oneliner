cat ../shellgei160/qdata/11/gijiroku.txt | xargs -n2 | sed 's/^すず/鈴木/;s/^やま/山田/;s/^さと/佐藤/;s/ /:/;s/$/\n/'
