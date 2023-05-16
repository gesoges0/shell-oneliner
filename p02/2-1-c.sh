#!/bin/bash

a=私は
b=俳優よ

# q1 私は俳優よ
c=$a$b
echo $c

# q2 私は俳優よ(Bash)
a+=$b
echo $a

# q3 私俳優 (Bash)
b=${a:0:1}${a:2:4}
echo $b

# q4 私は排骨麺よ
c=${a/俳優/排骨麺}; echo $c
