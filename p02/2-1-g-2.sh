# パイプでコマンドが複数繋がっている場合、$?で確認できるのは最後のコマンドの終了ステータスのみ
# Bashの場合はPIPESTATUSにパイプラインすべての終了ステータスを記録する

cat /etc/passwd | grep hoge
echo ${PIPESTATUS[@]}

#gesogeso@gesogeso ~/src/shell-oneliner/p02 (main) $ sh 2-1-g-2.sh
#2-1-g-2.sh: 5: Bad substitution
#gesogeso@gesogeso ~/src/shell-oneliner/p02 (main) $ /bin/bash 2-1-g-2.sh
#0 1 (catは成功, grepは検索ヒットなし)
