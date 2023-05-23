# 1
seq 4 | awk '{print "mkdir " ($1%2 ? "odd_" : "even_") $1}'

# mkdir odd_1
# mkdir even_2
# mkdir odd_3
# mkdir even_4

seq 4 | awk '{print "mkdir " ($1%2 ? "odd_": "even_") $1}' | bash

seq 4 | awk '{print ($1%2 ? "odd_" : "even_")$1}' | xargs rmdir

# make bash file
seq 4 | awk '{print "mkdir " ($1%2 ? "odd_" : "even_") $1}' >a
# bash ./a
