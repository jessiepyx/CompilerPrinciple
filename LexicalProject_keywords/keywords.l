%{
#include <stdio.h>
%}
keywords ([Aa][Nn][Dd]|[Aa][Rr][Rr][Aa][Yy]|[Bb][Ee][Gg][Ii][Nn]|[Cc][Aa][Ss][Ee]|[Cc][Oo][Nn][Ss][Tt]|[Dd][Ii][Vv]|[Dd][Oo]|[Dd][Oo][Ww][Nn][Tt][Oo]|[Ee][Ll][Ss][Ee]|[Ee][Nn][Dd]|[Ff][Oo[Rr]|[Ff][Uu][Nn][Cc][Tt][Ii][Oo][Nn]|[Gg][Oo][Tt][Oo]|[Ii][Ff]|[Ii][Nn]|[Mm][Oo][Dd]|[Nn][Oo][Tt]|[Oo][Ff]|[Oo][Rr]|[Pp][Aa][Kk][Ee][Dd]|[Pp][Rr][Oo][Cc][Ee][Dd][Uu][Rr][Ee]|[Pp][Rr][Oo][Gg][Rr][Aa][Mm]|[Rr][Ee][Cc][Oo][Rr][Dd]|[Rr][Ee][Pp][Ee][Pp][Aa][Tt]|[Ss][Ee][Tt]|[Tt][Hh][Ee][Nn|[Tt][Oo]|[Tt][Yy][Pp][Ee]|[Uu][Nn][Tt][Ii][Ll]|[Vv][Aa][Rr]|[Ww][Hh][Ii][Ll][Ee]|[Ww][Ii][Tt][Hh])
%%
\/\/.* {printf("%s", yytext);}
\/\*[\s\S]*\*\/ {printf("%s", yytext);}
[ \f\n\r\t\v]+{keywords}/[ \f\n\r\t\v]+ {
	int i;
	for (i = 0; i < strlen(yytext); i++)
	{
		if (yytext[i] >= 'a' && yytext[i] <= 'z')
			printf("%c", yytext[i] + 'A' - 'a');
		else
			printf("%c", yytext[i]);
	}
}
%%
void main()
{
	yylex();
}
int yywrap()
{
	return 1;
}
