# $1, $2, $3 にセットする
set aa bb cc
echo $2

for x in "$1" "$2" "$3"; do echo $x; done

# 改行あり
seq 3 | while read x; do echo $x; done

# 改行なし
seq 3 | while read x; do printf "%s " $x; done

# 終了ステータス
grep 'bash' /etc/passwd
#root:x:0:0:root:/root:/bin/bash
#gesogeso:x:1000:1000:gesogeso,,,:/home/gesogeso:/bin/bash
echo $? # 0 (正常終了)

grep 'bush' /etc/passwd
echo $? # 1 (検索対象なし)

grep 'bush' /etc/passwdddddd
echo $? # 2 (ファイル名が間違いなのでエラー)

gre 'bush' /etc/passwd
echo $? # 127 (コマンドの間違いなのでgrepではなくbashが終了ステータス127をセット)
