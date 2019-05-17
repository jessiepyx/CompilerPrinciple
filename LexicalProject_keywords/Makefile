keywords: lex.yy.c
	gcc -o keywords lex.yy.c

lex.yy.c: keywords.l
	flex keywords.l

clean:
	rm -f *.o
	rm lex.yy.c
