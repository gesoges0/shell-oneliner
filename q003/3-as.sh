seq -w 100 | awk '{print $1,$1}' | sed 's/^0*/mv /'
# mv 1 001
# mv 2 002
# mv 3 003
# mv 4 004
# mv 5 005
# mv 6 006
# mv 7 007
# mv 8 008
# mv 9 009
# mv 10 010

# execute 
seq -w 100 | awk '{print $1,$1}' | sed '/s/^0*/mv /' | xaargs -P$(nproc) -I@ sh -c @

