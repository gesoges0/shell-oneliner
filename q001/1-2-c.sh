# 回答例
echo '1+1' | bc

# 1. 
echo '1+1' | sed 's/.*/echo $((&))/'  # echo $((1+1))
echo '1+1' | sed 's/.*/echo $((&))/' | bash

# 2. 
echo '1+1' | sed 's/^/puts /'  # puts 1+1
echo '1+1' | sed 's/^/puts /' | ruby

# 3. 
echo '1+1' | tr + ' '  # 1 1 
echo '1+1' | tr + ' ' | numsum -r

echo '1 1' | numsum -r

# 4. 
echo '1+1' | sed 's/./& /g'  # 1 + 1 
echo '1+1' | sed 's/./& /g' | xargs expr

# 5. 
echo '1+1' | sed 's/./& /g'  # 1 + 1
echo '1+1' | sed 's/./& /g' | sed 's/^/expr /e' # expr 1 + 1

# 6. 
echo '1+1' | perl -ple '$=eval'

# 7.
echo '1+1' | bash -c 'echo $(($(cat)))'

# 8.
echo '1+1' | grep -o 1 | wc -l

# 9.
echo '1+1' | perl -e '{pritf "%d\n", eval(<STDIN>)}'
