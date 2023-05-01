seq 19 | awk '{print $1%2 ? "odd" : "even"}' | sort | uniq -c | awk '{print $2, $1}' | sort -k2,2n

seq 19 | awk '{print $1%2 ? "odd" : "even"}' | sort | uniq -c | awk '{print $2, $1}' | sort -k2,2
