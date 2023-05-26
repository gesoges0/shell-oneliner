# 1
n=1;while [ $n -le 100 ]; do echo "羊が$n匹"; n=$((n + 1)); sleep 1; done

# 2
seq 100 | while read n; do echo '羊が'$n'匹'; sleep 1; done

# 3 
for n in $(seq 100); do echo 羊が$n匹; sleep 1; done

# 4 (bash)
for n in {1..100}; do echo 羊が$n匹; sleep 1; done

# 5 (bash)
for ((n=1; n<=100; n++)); do echo 羊が$n匹; sleep 1; done

# 6
seq -f 'echo 羊が%g匹; sleep 1' 100 | bash

# 7
seq 1 100 | xargs -I@ bash -c 'echo 羊が@匹; sleep 1'
