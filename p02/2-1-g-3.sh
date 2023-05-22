# $1, $2, $3に変数をセット
set aa ab cc

for x in $@; do echo $x; done

# $@で$1, $2, $3をまとめることができる
for x in "$@"; do echo $x; done

# "$*" クォートありだと"aa bb cc"という一つの文字として扱われてしまうため, 最初にx="aa bb cc"が入りループが終了してしまう
# これだけ"aa bb cc"という結果になる, 他は改行ありで出力される.
for x in "$*"; do echo $x; done

# $* クォートなしだと"aa" "bb" "cc"というそれぞれの文字に対してループを回せる
for x in $*; do echo $x; done
