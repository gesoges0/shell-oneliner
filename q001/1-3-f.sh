# 1
seq 4 | xargs mkdir

# 2
seq 4 | xargs rmdir

# 3
mkdir 1 3
seq 4 | xargs -n2 mv 
ls -d 2 4
seq 4 | awk '$1%2==0{print $1}' | xargs rmdir

# 4
seq 4 | xargs -I@ mkdir dir_@
seq 4 | awk '{print "dir_"$1}' | xargs rmdir
