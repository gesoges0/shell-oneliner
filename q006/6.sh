seq 10 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}'

#x
# x
#  x
#   x
#    x
#     x
#      x
#       x
#        x
#         x

seq 10 | awk '{for(i=1;i<$1;i++){printf " "};print "x"}' | tac
#         x
#        x
#       x
#      x
#     x
#    x
#   x
#  x
# x
#x

