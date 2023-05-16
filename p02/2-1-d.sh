a=6
b=2

echo $((a+b))
echo $((b-a))
echo $((a*b))
echo $((a/b))
# 2を左に6個シフト
echo $((b<<a))

# これも出来るが, $a, $bは文字列を表すので, a,bを文字列に展開してから算術展開しているという形
echo $(($a+$b))

# (for bash)
echo $(("6"+"2"))
