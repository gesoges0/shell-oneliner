# 1
seq 5 | aws '/[24]/'

# 2
seq 5 | awk '$1%2==0'

# 3
seq 5 | awk '$1%2==0{printf("%s even\n", $1)}'

# 4
seq 5 | awk '$1%2==0{printf("%s even\n", $1)}$1%2==1{printf("%s odd\n", $1)}'

# 5
echo '-----'
seq 5 | awk 'BEGIN{a=0}$1%2==0{print $1,"even"}$1%2{print $1,"odd"}{a+=$1}END{print "sum",a}'
