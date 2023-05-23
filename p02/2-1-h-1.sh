#!/bin/bash

if grep '[02468]$' <<<"$1"; then
	echo 偶数
elif grep '[13579]$' <<<"$1"; then
	echo 奇数
else
	echo その他
fi
