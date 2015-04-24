# Usage make -f hello.Makefile
# Makefileには、プログラムが構築されているルールが記述されている
# ルールは、ターゲットと必須項目と実行コマンドの３要素からなる
# ターゲット: 必須項目
#	実行コマンド
# helpは、先頭のルールなので、デフォルトルールとして扱われる
help:
	echo help hello cat
hello.o: hello.c
	gcc hello.c -o hello.o
cat: hoge.txt
	cat hoge.txt


# MakefileでC言語をコンパイルする
# 
# Makefileの基礎を勉強するには、C言語のコードを使ってコンパイルするのがいいです。  
# Makefileは、名前通り何か作るファイルです。  
# 
# http://omilab.naist.jp/~mukaigawa/misc/Makefile.html
# 
# gcc hello.c -o hello
