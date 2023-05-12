cat ../shellgei160/qdata/9/log_range.log | awk '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../'

cat ../shellgei160/qdata/9/log_range.log | awk '$4" "$5>="[24/Dec/2016 21:00:00]" && $4" "$5<"[25/Dec/2016 03:59:60]"'
