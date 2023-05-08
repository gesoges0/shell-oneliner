cat ../shellgei160/qdata/5/ntp.conf | awk '{print ($1=="pool"?$2:"")}' | grep -v ^$ 
