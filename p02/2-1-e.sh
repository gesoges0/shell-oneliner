p=pen
re=""

# 1.
# - クォートなしは変数が解釈される
# - ダブルクォートは変数が解釈される
# - シングルクォートは解釈されない
# pen pen $p
echo $p "$p" '$p'

# 2.
# This is a pen. This is a $p
echo "This is a $p." 'This is a $p'

# 3.
# This is a pencil. That is a pencil. That was a .
echo "This is a ${p}cil." That is a "$p"cil. "That was a $pcil."

# 4-1.
# grep "$re" /etc/passwd

# 4-2.
# grep /etc/passwd になってしまい止まる
# grep $re /etc/passwd
