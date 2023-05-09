# 1
# echo -eでメタ文字を認識できる
echo -e "    x\n   x\n  x\n x\nx"

# 2
# aの初期値は0
seq 5 | awk '{a++;for(i=5;i>a;i--){printf " "};print "x"}'

# 3
# NRはawkの変数で行番号を表す 1, 2, 3, 4, 5
seq 5 | awk '{for(i=5;i>NR;i--){printf " "};print "x"}'

# 4
# 降順にseqしてawkで数字を拾う
seq 5 -1 1 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}'

# 5
printf "%*s\n" 5 x 4 x 3 x 2 x 1 x

# 6
seq 5 -1 1 | awk '{printf "%*s\n",$1,"x"}'

# ex)
printf "%5s\n" a bb ccc
#    a
#   bb
#  ccc

# 7
seq 4 -1 0 | awk '{print 10^$1"x"}'
#10000x
#1000x
#100x
#10x
#1x

seq 4 -1 0 | awk '{print 10^$1"x"}' | tr -d 1 | tr 0 ' '
