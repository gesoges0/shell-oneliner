a=("$SHELL" "$LANG" "$USER")

# bという連想配列を作る
declare -A b
b["SHELL"]="$SHELL"
b["LANG"]="$LANG"
b["USER"]="$USER"

# 1
echo ${a[1]}
echo ${b["LANG"]}

# 2
echo ${a[@]}
echo ${a[*]}
echo ${b[@]} # 連想配列はすべてのvalueを出力する
echo ${b[*]}

# 3
echo ${#a[@]}
echo ${#a[*]}
echo ${#b[@]}
echo ${#b[*]}
c=abcde
echo ${#c} # 5
e=南無阿弥陀仏
echo ${#e} # 6

# 4
# keyのみ取り出す
echo ${!b[@]}

# -------------------------------------------
# *と@の違い
# -------------------------------------------
IFS=🤔

# 1. クォートしないと同じ
echo ${a[@]} # /bin/bash ja_JP.UTF-8 gesogeso
echo ${a[*]} # /bin/bash ja_JP.UTF-8 gesogeso

echo ${b[@]} # /bin/bash ja_JP.UTF-8 gesogeso
echo ${b[*]} # /bin/bash ja_JP.UTF-8 gesogeso

# 2. クォートするとa[*]のときに区切り文字が変化
echo "${a[@]}" # /bin/bash ja_JP.UTF-8 gesogeso
echo "${a[*]}" # /bin/bash🤔ja_JP.UTF-8🤔gesoges

echo "${b[@]}" # /bin/bash ja_JP.UTF-8 gesogeso
echo "${b[*]}" # /bin/bash🤔ja_JP.UTF-8🤔gesoges
