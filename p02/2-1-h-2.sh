a=0
[ 10 -gt "$a" ]
echo $?  # 0 (正常終了)


a="Yes we can!"
[ "$a" = "No we cannot!" ]
echo $?  # 1 (検索対象なし)


a=0
test 10 -gt "$a"
echo $?  # 0 (正常終了)


# /etc/passwdが存在するか?
[ -e /etc/passwd ]; echo $?  # 0(正常終了)
