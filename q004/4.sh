if [ -e tmp ]; then
    echo 'remove ./tmp'
    rm -rf tmp
fi

mkdir ./tmp

(
    cd ./tmp
    # echo $RANDOM > 1 | bash
    seq 10000 | sed 's/^/echo $RANDOM > /' | bash
)

# 1
grep -l '^10$' -R

# 2
(
    cd tmp
    seq 10000 | xargs -P$(nproc) grep '^10$' -l
)

# 3
# sudo apt install ripgrep
rg -l '^10$'
