# pandocを使うとmarkdownなどの形式を変換できる
# sudo apt install pandoc

if ! pandoc >/dev/null 2>&1; then
	echo 'command not found: pandoc'
	exit 1
fi

pandoc ../shellgei160/qdata/10/headings.md -f markdown+hard_line_breaks -t markdown+hard_line_breaks
