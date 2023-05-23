# 同じ 1は標準出力
ls ../ >a
ls ../ 1>a

# 同じ 0は標準入力
wc -l <a
wc -l 0<a

# 2は標準エラー出力
sed 2>a
wc -l a

# 標準エラー出力を標準出力の参照先に振り向ける
sed 2>&1 | wc -l
# sed |& wc -l
# sed |& less
