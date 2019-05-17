count: lex.yy.c
	gcc -o count lex.yy.c

lex.yy.c: count.l
	flex count.l

clean:
	rm -f *.o
	rm lex.yy.c
