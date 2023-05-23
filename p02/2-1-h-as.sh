# 1
a=33
echo $a | awk '{print /[0-9]/ ? ($1%2 ? "奇数" : "偶数") : "その他"}'

# 2
a=x
echo $a | awk '/[0-9]/{print $1%2 ? "奇数" : "偶数"; exit}{print "その他"}'


# 3 
# bashの終了ステータスは最後に実行されたコマンドのものになるため,
# bash -c "grep ... || grep ..." の中身がすべて終了ステータス0以外だった場合, bashとしての終了ステータスも0以外となるので, 
# bash -c "grep ... || grep ..." || echo その他 の echo その他 の部分が実行される.
# ※ aが空文字だとうまくいかない
bash -c "grep '[02468]' <<< $a && echo 偶数" || bash -c "grep '[13579]' <<< $a && echo 奇数" || echo その他


# 4
# 3のbash -c をサブシェルで表現(shでなく/bin/bashで実行)
( grep '[02468]' <<< "$a" && echo 偶数 ) || ( grep '[13579]' <<< "$a" && echo 奇数 ) || echo その他
