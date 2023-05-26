echo pen-pineapple-apple-pen | (IFS=-; read -a w; echo "${w[*]^}")
