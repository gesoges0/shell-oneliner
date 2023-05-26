# 別解1
[ "$1" = "" ] && read n || n="$1"
echo $((n*2))

# 別解2
num=${1:-$(cat)}
echo $(($num * 2))

# 別解3 (bash)
echo $[${1:-$(cat)}*2]
