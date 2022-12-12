echo '1+1' | bc

# 1.
echo '1+1' | sed 's/.*/echo $((&))/'  # echo $((1+1))
echo '1+1' | sed 's/.*/echo $((&))/' | bash

# 2.
echo '1+1' | sed 's/^/puts /' 
echo '1+1' | sed 's/^/puts /' | ruby
