# my solution
awk -F: '{print $(NF-2)}' ../shellgei160/qdata/8/access.log | awk '{print $1<"12" ? "午前" : "午後"}' | sort | uniq -c 

# another solution 
cat ../shellgei160/qdata/8/access.log | grep -o '..:..:.. +0900' | sed 's/:.*//' | awk '{print $1<"12" ? "午前" : "午後"}' | sort | uniq -c

# another solution 
sed -r 's@.*\[|\]|/@@g;s/:/ /' ../shellgei160/qdata/8/access.log | date -f- +%p # | sort | uniq -c
#午後
#午前
#午後
#午後
#午前
