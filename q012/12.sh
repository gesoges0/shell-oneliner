# factor は標準入力からも引数からも値を受け取れる
echo 63 | factor
factor 63

# 競合した場合は引数が優先される
echo 42 | factor 63

# q12 引数, 標準入力で与えられた数値を2倍する処理を書く
if [ "$1" = "" ]; then
    read n
else
    n="$1"
fi

echo $((n*2))
