mkdir ./tmp

(
    cd tmp
    seq 1000000 | xargs -P6 touch
    time ls -U | xargs -P6 rename 's/^/0000000/;s/0*([0-9]{7})/$1/'
    time ls -U | xargs -P$(nproc) rm
)

rmdir tmp
