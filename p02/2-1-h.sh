a=0
if echo $a | grep '[02468]$' ; then echo 偶数 ; elif echo $a | grep '[13579]$' ; then echo 奇数 ; else echo その他 ; fi


