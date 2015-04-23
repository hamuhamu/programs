# Usage make -f hello.Makefile
# ターゲット: 必須項目
#	実行コマンド
# helpは、先頭のルールなので、デフォルトルールとして扱われる
help:
	echo help hello cat
hello:
	echo hello
cat: hoge.txt
	cat hoge.txt
