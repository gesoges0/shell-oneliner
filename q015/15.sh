# 普通に一文字ずつ読み込む方法
# 1
echo I am a perfect human | while read a ; do echo $a ; done 

# 2
echo I am a perfect human | bash -c 'read a ; echo $a'

# 3
echo I am a perfect human | (read a ; echo $a )

# 大文字にする
# $a を　${a^^} にする（ただしbashのみ）
# 1 
echo I am a perfect human | while read a ; do echo ${a^^} ; done

# 2
echo I am a perfect human | bash -c 'read a ; echo ${a^^}'

# 3
echo I am a perfect human | (read a ; echo ${a^^})
