# 回答例
echo '1+1' | bc

# 1.
# .* で '1+1' を指定 
# 前述の'1+1' を & の部分へ
# s/.*/echo $((&))/ で1+1という文字列を 'echo $((1+1))' という文字列にする
# $((1+1))
echo '1+1' | sed 's/.*/echo $((&))/'  # echo $((1+1))
echo '1+1' | sed 's/.*/echo $((&))/' | bash

# 2. 
# ^(行の先頭) '' を'puts ' に置き換え
# echo 'puts 1+1' をrubyに渡す
echo '1+1' | sed 's/^/puts /'  # puts 1+1
echo '1+1' | sed 's/^/puts /' | ruby

# 3. 
# tr + ' ' で + を ' ' に置き換える
# '1+1' が '1 1'に置き換わる
# num-utilsパッケージの数値合計のためのコマンド numsumを使う
# スペース区切りのオプションとして-rを使う
echo '1+1' | tr + ' '  # 1 1 
echo '1+1' | tr + ' ' | numsum -r

echo '1 1' | numsum -r

# 4. 
# . (任意の1文字)に対して '& 'に置き換える
# & は前述の . を指すので'1+1' -> '1 + 1 ' 
# echo '1 + 1 ' | xargs expr
echo '1+1' | sed 's/./& /g'  # 1 + 1 
echo '1+1' | sed 's/./& /g' | xargs expr

# 5. 
# echo '1 + 1 ' | sed 's/^/expr /e'
# echo 'expr 1 + 1'
echo '1+1' | sed 's/./& /g'  # 1 + 1
echo '1+1' | sed 's/./& /g' | sed 's/^/expr /e' # expr 1 + 1

# 6. 
echo '1+1' | perl -ple '$=eval'

# 7.
# echo '1+1' | bash -c 'echo $(())'
echo '1+1' | bash -c 'echo $(($(cat)))'

# 8.
# echo '1+1' | grep -o 1
# # 1
# # 1
# count rows 
echo '1+1' | grep -o 1 | wc -l

# 9.
echo '1+1' | perl -e '{pritf "%d\n", eval(<STDIN>)}'
