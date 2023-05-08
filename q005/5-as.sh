# grep -v : invert match
# ^$: blank line
cat ../shellgei160/qdata/5/ntp.conf | awk '{print ($1=="pool"?$2:"")}' | grep -v ^$ 

cat ../shellgei160/qdata/5/ntp.conf | awk '$1=="pool"{print $2}'
cat ../shellgei160/qdata/5/ntp.conf | awk '($1=="pool"){print $2}'
