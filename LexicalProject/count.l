%{
#include <stdio.h>
int cnt_char = 0;
int cnt_word = 0;
int cnt_line = 0;
%}
%%
[a-zA-Z0-9]+ {cnt_word++; cnt_char += strlen(yytext);}
\n {cnt_line++; cnt_char++;}
. {cnt_char++;}
%%
void main()
{
	yylex();
	printf("%d char(s), %d word(s), %d line(s).\n", cnt_char, cnt_word, cnt_line);
}
int yywrap()
{
	return 1;
}
