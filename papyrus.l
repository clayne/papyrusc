%%

/* this is just basic lex code, outputting all text */
. ECHO;

\n ECHO;

%%

int yywrap(void) {
	return 1;
}

int main(void) {
	yylex();
	return 0;
}