%{
#include "y.tab.h"
#include <stdlib.h>
%}

digit [0-9]
varnamechar [a-zA-Z_]

%%

[ \t]+ /* whitespace is irrelevant EXCEPT \n/\r */
[-+()<>/*\n\r] { return *yytext; }
{digit}+ {
				yylval = atoi(yytext);
				return INTEGER;
		 }
		 
 /* operators, mostly in order of precedence */
";" return COMMENT; 
"." return ACCESS;
(?i:as) return CAST;
"!" return NOT;
"%" return MODULO;
"==" return EQ;
"!=" return NEQ;
">=" return GEQ;
"<=" return LTEQ;
"&&" return AND;
"||" return OR;
"=" return ASSIGN;
"+=" return PLUSASSIGN;
"-=" return MINUSASSIGN;
"*=" return MULTASSIGN;
"/=" return DIVASSIGN;
"%=" return MODASSIGN; 
 /* keywords, not counting AS which is an operator */
(?i:auto) return AUTO;
(?i:autoreadonly) return AUTORO;
(?i:bool) return BOOL;
(?i:else) return ELSE;
(?i:elseif) return ELIF;
(?i:endevent) return ENDEVENT;
(?i:endfunction) return ENDFUNC;
(?i:endif) return ENDIF;
(?i:endproperty) return ENDPROP;
(?i:endstate) return ENDSTATE;
(?i:endwhile) return ENDWHILE;
(?i:event) return EVENT;
(?i:extends) return EXTENDS;
(?i:false) return FALSE;
(?i:float) return FLOAT;
(?i:function) return FUNCTION;
(?i:global) return GLOBAL;
(?i:if) return IF;
(?i:import) return IMPORT;
(?i:int) return INT;
(?i:length) return LENGTH;
(?i:native) return NATIVE;
(?i:new) return NEW;
(?i:none) return NONE;
(?i:parent) return PARENT;
(?i:property) return PROPERTY;
(?i:return) return RETURN;
(?i:scriptname) return SCRIPTN;
(?i:self) return SELF;
(?i:state) return STATE;
(?i:string) return STRING;
(?i:true) return TRUE;
(?i:WHILE) return WHILE;

{varnamechar}({varnamechar}|{digit})* {
										yylval.id = strdup(yytext);
										return IDENT;
									  }

%%

int yywrap(void) {
	return 1;
}

int main(void) {
	yylex();
	return 0;
}