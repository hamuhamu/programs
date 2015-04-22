# Usage make -f try_catch.Makefile run
run:
	$(MAKE) -f try_catch.Makefile exec || $(MAKE) -f try_catch.Makefile error
exec:
	cat hoge.txt
error:
	echo NG
