%{
	#define YYSTYPE double
	#include <stdio.h>
	#include <ctype.h>
	#include <math.h>
	int yylex(void);
	int yyerror(const char*);
%}
%token NUM
%left '+''-'
%left '*''/'
%left NEG
%right '^'
%%
line	: line exp '\n' { printf("%f\n", $2); }
	| line '\n'
	| 
	;
exp	: exp '+' exp { $$ = $1 + $3; }
	| exp '-' exp { $$ = $1 - $3; }
	| exp '*' exp { $$ = $1 * $3; }
	| exp '/' exp { $$ = $1 / $3; }
	| exp '^' exp { $$ = pow($1, $3); }
	| '-' exp %prec NEG { $$ = -$2; }
	| '(' exp ')' { $$ = $2; }
	| NUM { $$ = $1; }
	;
%%
int main(void)
{
	return yyparse();
}
int yylex(void)
{
	char c;
	do { c = getchar(); } while (c == ' ' || c == '\t');
	if (c == EOF) return 0;
	if (c == '.' || isdigit(c)) // number
	{
		ungetc(c, stdin);
		scanf("%lf", &yylval);
		return NUM;
	}
	return c; // char
}
int yyerror(const char *s)
{
	fprintf(stderr, "%s\n", s);
	return 1;
}
