# judge odd, even
seq 5 | awk '{print $1%2 ? "odd": "even"}'

seq 5 | awk '$1%2{print "odd"}$1%2==0{print "even"}'

# sort
seq 5 | awk '{print $1%2 ? "odd" : "even"}' | sort

# count num of even, odd
seq 5 | awk '{print $1%2 ? "odd" : "even"}' | sort | uniq -c

# format
seq 5 | awk '{print $1%2 ? "odd" : "even"}' | sort | uniq -c | awk '{print $2, $1}'
