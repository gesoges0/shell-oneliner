seq 10 | awk '{print $1%5}'

seq 10 | awk '{print $1%5}' | sed -n '/2/,/4/p'

cat ../shellgei160/qdata/9/log_range.log | sed -n '/24\/Dec\/2016 21:..:../,/25\/Dec\/2016 03:..:../p'
